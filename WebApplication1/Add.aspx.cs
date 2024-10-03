using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string line = addID.Text + "|" + addBName.Text + "|" + addName.Text + "|" + addType.Text + "|" + addGrain.Text + "|" + addPrice.Text;
            GridLoad.InputData(line);
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}