using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 问渠.Bll;
using 问渠.model;

namespace wenbook
{
    public partial class BookShelf : System.Web.UI.Page
    {
        SQLHelper db = new SQLHelper();
        logonBll bal = new logonBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                logoninfo lg = new logoninfo(Session["user"].ToString());
                lg = bal.selectname(lg);
                this.user.Text = lg.Name;
                //string name = Session["user"].ToString();     
                //string cmdText = "SELECT [bookName], [author], [type], [introduce], [path] FROM [ViewBook]";
                //string[] paramList = { "@type" };
                //object[] valueList = { name };
                //DataSet da = db.FillDataSet(cmdText, paramList, valueList);
                //GridView1.DataSource = da;
                //GridView1.DataSourceID = "";
                //GridView1.DataBind();
                //string cmdText2 = "SELECT [ebookName], [author], [type], [introduce], [path] FROM [ViewEbook]";
                //string[] paramList2 = { "@type" };
                //object[] valueList2 = { name };
                //DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
                //GridView2.DataSource = da2;
                //GridView2.DataSourceID = "";
                //GridView2.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        

   
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "getID")
            {

                Button mybt = new Button();
                mybt = (Button)e.CommandSource;
                Session["type"] = "e";
                Session["name"] = mybt.Text;
                Response.Redirect("BookMessage.aspx");
            }

            if (e.CommandName == "setID")
            {
                string sd = e.CommandArgument.ToString();

                Button mybt = new Button();
                mybt = (Button)e.CommandSource;

                string cmdText = "delete from T_EbookShelf where userName=@userName and bookName = @bookName  ";
                string[] paramList = { "@userName", "@bookName" };
                object[] valueList = { sd, mybt.Text };
                int a = db.ExecuteNoneQuery(cmdText, paramList, valueList);


            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "getID")
            {

                Button mybt = new Button();
                mybt = (Button)e.CommandSource;
                Session["type"] = "b";
                Session["name"] = mybt.Text;
                Response.Redirect("BookMessage.aspx");
            }
            if (e.CommandName == "setID")
            {
                string sd = e.CommandArgument.ToString();

                Button mybt = new Button();
                mybt = (Button)e.CommandSource;
                Session["type"] = "e";
                Session["name"] = mybt.Text;

                string cmdText = "delete from T_BookShelf where userName=@userName and bookName = @bookName  ";
                string[] paramList = { "@userName", "@bookName" };
                object[] valueList = { sd,mybt.Text };
                int a =  db.ExecuteNoneQuery(cmdText, paramList, valueList);

            }
        }
    }
}