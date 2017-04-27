﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment10._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My World of Coke Visualization</title>
    <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">A Map of Our Coke Collection</div>
        <!-- our map will go into this div -->

        <div></div>

        <script src="//d3js.org/d3.v3.min.js"></script>
        <script src="//d3js.org/d3.geo.projection.v0.min.js"></script>
        <script src="//d3js.org/topojson.v1.min.js"></script>
        <script>

            // This data is dynamically created from the database.
            var data = [
            <% GetCountryData(); %>
            ];
        </script>

        <script>
            var width = 960,
                height = 900;

            var color = d3.scale.category10();

            var projection = d3.geo.kavrayskiy7()
                .scale(170)
                .translate([width / 2, height / 2.8])
                .precision(.1);

            var path = d3.geo.path()
                .projection(projection);

            var graticule = d3.geo.graticule();

            var svg = d3.select("div").append("svg")
                .attr("width", width)
                .attr("height", height);

            svg.append("defs").append("path")
                .datum({ type: "Sphere" })
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

            d3.json("/data/world-50m.json", function (error, world) {
                if (error) throw error;

                var countries = topojson.feature(world, world.objects.countries).features,
                    neighbors = topojson.neighbors(world.objects.countries.geometries);

                svg.selectAll(".country")
                     .data(countries)
                     .enter().insert("path", ".graticule")
                     .attr("class", function (d) { return "c" + d.id; })
                     .attr("d", path);

                svg.insert("path", ".graticule")
                  .datum(topojson.mesh(world, world.objects.countries, function (a, b) { return a !== b; }))
                  .attr("class", "boundary")
                  .attr("d", path);

                //This loops through each element of our array from DB, and highlights it.               

                data.forEach(function (elt, i) {
                    var colr = 'blue';
                    var type = 'can';
                    if (elt[2] == 'True') {
                        colr = 'red';       //Bottles are Red!
                        type = 'bottle';
                    }
                    svg.select('.' + elt[0]).attr('fill', colr)
                        .append("svg:title")
                        .text(function (d) {
                            var c = elt[1];                            
                            var dt = elt[3];
                            return c + "\nWe got a " + type + " from here on " + dt;
                        });
                });

                var dtMin = "1/1/1985";
                var dtMax = "12/31/2013";

                var format = d3.time.format("%d/%m/%Y");
                var startDate = format.parse(dtMin);
                var endDate = format.parse(dtMax);              

                var x = d3.time.scale()
                    .domain([startDate, endDate])
                    .nice(d3.time.month)
                    .range([100, width - 100]);                
                
                data.forEach(function (elt, i) {
                    var m1 = elt[3];
                    var x1 = x(format.parse(m1));
                    var colr = 'blue';
                    if (elt[2] == 'True') {
                        colr = 'red';       //Bottles are Red!
                    }
                    svg.append("circle")
                   .attr("r", 10)
                   .attr("cx", function (d) { return x1; })
                   .attr("cy", 700)
                    .attr("fill", colr);

                });

                svg.append("g")
                .attr("class", "x axis")
                .attr("transform", "translate(0," + (700) + ")")
                .call(d3.svg.axis().scale(x).orient("bottom"));

            });
             
        </script>
        <div class="footer"><a href="about.html">About</a></div>
    </form>
</body>
</html>
