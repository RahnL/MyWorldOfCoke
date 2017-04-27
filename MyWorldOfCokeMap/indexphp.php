<!DOCTYPE html>
<meta charset="utf-8">
<head>
<title>My World of Coke Visualization</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>

<body>
<script src="//d3js.org/d3.v3.min.js"></script>
<script src="//d3js.org/d3.geo.projection.v0.min.js"></script>
<script src="//d3js.org/topojson.v1.min.js"></script>
<div id='map'></div>
<script>
var data = [
		<?php
		// pull data dynamically for styling and stuff.
		$serverName = "rahnandmikevisualizationdb.database.windows.net";
		$connectionOptions = array(
			"Database" => "rahnandmikevisualization",
			"Uid" => "rahnandmike",
			"PWD" => "oW4evKHf36dI"
			);
		//Establishes the connection
		$conn = sqlsrv_connect($serverName, $connectionOptions);
		$tsql = "select distinct cc.ISOM49Code, cc.CountryName, isBottle, DateAquired from coke c inner join countrycodes cc on c.countrycode = cc.ISOAlpha3Code where active = 1";  
		$stmt = sqlsrv_query( $conn, $tsql);  
		
		// This is printing each row to the page.  Formatting is as part of a js array.
		// Note the declaration right before the script starts and closing tag at end.
		// format is like this:
		//  [ 'country', 'column2', 'column3', etc..]
		while ($row = sqlsrv_fetch_array($stmt)) {
			echo ("['c".$row[0]);	// ID
			echo ("','".$row[1]);	// CountryName
			echo ("','".$row[2]);	// IsBottle
			echo ("','".$row[3]->format('F j, Y'));	// DateAquired. See date format spec
			echo ("',], \n");
		}
		// Throw an extra line at the end to handle that trailing comma
		echo ("['This will not be found','No value','',''] \n");
		
		sqlsrv_free_stmt( $stmt);  
		sqlsrv_close( $conn);  
	?> ];
</script>
			
<script>


// Dynamically create this list of countries

var width = 960,
    height = 580;

var color = d3.scale.category10();

var projection = d3.geo.kavrayskiy7()
    .scale(170)
    .translate([width / 2, height / 2])
    .precision(.1);

var path = d3.geo.path()
    .projection(projection);

var graticule = d3.geo.graticule();

var svg = d3.select("div").append("svg")
    .attr("width", width)
    .attr("height", height);

svg.append("defs").append("path")
    .datum({type: "Sphere"})
    .attr("id", "sphere")
    .attr("d", path);

svg.append("use")
    .attr("class", "stroke")
    .attr("xlink:href", "#sphere");

svg.append("use")
    .attr("class", "fill")
    .attr("xlink:href", "#sphere");

svg.append("path")
    .datum(graticule)
    .attr("class", "graticule")
    .attr("d", path);

	
d3.json("/data/world-50m.json", function(error, world) {
  if (error) throw error;

  var countries = topojson.feature(world, world.objects.countries).features,
      neighbors = topojson.neighbors(world.objects.countries.geometries);

 svg.selectAll(".country")
      .data(countries)
	  .enter().insert("path", ".graticule")
      .attr("class", function(d) { return "c" + d.id; })
      .attr("d", path);
	 
	svg.insert("path", ".graticule")
      .datum(topojson.mesh(world, world.objects.countries, function(a, b) { return a !== b; }))
      .attr("class", "boundary")
      .attr("d", path);
	
  
	 data.forEach(function (elt, i) {
                    console.log(elt[0] + ': ' + elt[1]);
                    console.log(svg.select(elt[0]));
					
					var colr = 'blue';
                     if (elt[2] == 'True') {
                                colr = 'blue';
                      }

                    svg.select('.' + elt[0]).attr('fill', colr)
                        .append("svg:title")
                        .text(function (d) {
                            var c = elt[1];
                            var type = 'can';
                            if (elt[2] == 'True') {
                                type = 'bottle';
                            }
                            var dt = elt[3];
                            return c + "\nWe got a " + type + " from here on "+dt;
                        });
	});
});

d3.select(self.frameElement).style("height", height + "px");

</script>

<div class="footer"><a href="about.html">About</a></div>
