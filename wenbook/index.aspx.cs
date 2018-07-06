using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 问渠.Bll;
using 问渠.model;

namespace wenbook
{
    public partial class index : System.Web.UI.Page
    {

        logonBll bal = new logonBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                logoninfo lg = new logoninfo(Session["user"].ToString());
                lg = bal.selectname(lg);
                this.user.Text = lg.Name;
                this.loginli.Style["display"] = "none";
            }
            else {
                this.userli.Style["display"] = "none";
            }

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