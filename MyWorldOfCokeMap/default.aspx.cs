using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment10
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get IP address, so we can geocode it to see where visitors are coming from.
            // string clientIPAddress = HttpContext.Current.Request.UserHostAddress;
            // Response.Write("// Hello "+clientIPAddress.ToString());
        }

        public void GetCountryData()
        {
            string sql = "select distinct cc.ISOM49Code, cc.CountryName, isBottle, DateAquired from coke c inner join countrycodes cc on c.countrycode = cc.ISOAlpha3Code where active = 1";
            string constr = ConfigurationManager.ConnectionStrings["CokeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    foreach (DataRow r in dt.Rows)
                    {
                        // Look like this ['country124', 'Canada'],
                        string s = string.Format("['c{0}', '{1}', '{2}','{3}'], \r\n",
                            r["ISOM49Code"], r["CountryName"], r["IsBottle"].ToString(),
                            DateTime.Parse(r["DateAquired"].ToString()).ToShortDateString());
                        Response.Write(s);
                    }
                    string end = string.Format("['DummyValue', 'NaN','False','1/1/0001']");
                    Response.Write(end);
                }
            }
        }
    }
}