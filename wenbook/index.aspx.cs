using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wenbook
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "getID")
            {

                Button mybt = new Button();
                mybt = (Button)e.CommandSource;
                Session["type"] = "e";
                Session["name"] = mybt.Text;
                Response.Redirect("BookMessage.aspx");
            }
        }
    }
}