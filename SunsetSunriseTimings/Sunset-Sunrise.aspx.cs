using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using SunsetSunriseTimings.Models;

namespace SunsetSunriseTimings
{
    public partial class Sunset_Sunrise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetDataClick(object sender, EventArgs e)
        {
            string json;
            string url = "https://api.sunrise-sunset.org/json?lat=" + txtLatitude.Text + "&lng=" + txtLongitute.Text;
            WebRequest webRequest = WebRequest.Create(url);
            webRequest.Method = "Get";
            WebResponse webResponse = webRequest.GetResponse();
            using (Stream stream = webResponse.GetResponseStream())
            {
                StreamReader streamReader = new StreamReader(stream);
                json = streamReader.ReadToEnd();
            }

            Application appln = JsonConvert.DeserializeObject<Application>(json);
            //lblSunrise.Text = DateTime.Parse(appln.results.sunrise).AddHours(5).AddMinutes(30).ToString();
            lblSunrise.Text = Convert.ToDateTime(appln.results.sunrise).ToLocalTime().ToString("t");
            lblSunset.Text = Convert.ToDateTime(appln.results.sunset).ToLocalTime().ToString("t");
            webResponse.Close();
        }
    }
}