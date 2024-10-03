using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<GridLoad> GridList = GridLoad.CreateGrid();
            BakeryGrid.DataSource = GridList;
            BakeryGrid.DataBind();



        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add.aspx");
        }
    }
}