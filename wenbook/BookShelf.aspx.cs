﻿using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wenbook
{
    public partial class BookShelf : System.Web.UI.Page
    {
        SQLHelper db = new SQLHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            

            string cmdText = "SELECT [bookName], [author], [type], [introduce], [path] FROM [ViewBook]";
            string[] paramList = { "@type" };
            object[] valueList = { name };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "SELECT [ebookName], [author], [type], [introduce], [path] FROM [ViewEbook]";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { name };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
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
        }
    }
}