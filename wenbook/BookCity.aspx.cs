using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wenbook
{
    public partial class BookCity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SQLHelper db = new SQLHelper();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = this.Button1.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string value = this.Button2.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string value = this.Button3.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string value = this.Button4.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string value = this.Button5.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string value = this.Button6.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string value = this.Button7.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string value = this.Button9.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string value = this.Button10.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            string value = this.Button11.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string value = this.Button12.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string value = this.Button13.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            string value = this.Button14.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
            DataSet da2 = db.FillDataSet(cmdText2, paramList2, valueList2);
            GridView2.DataSource = da2;
            GridView2.DataSourceID = "";
            GridView2.DataBind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string value = this.Button8.Text;

            string cmdText = "select * from T_Book where type like  @type";
            string[] paramList = { "@type" };
            object[] valueList = { value };
            DataSet da = db.FillDataSet(cmdText, paramList, valueList);
            GridView1.DataSource = da;
            GridView1.DataSourceID = "";
            GridView1.DataBind();

            string cmdText2 = "select * from T_Ebook where type like  @type";
            string[] paramList2 = { "@type" };
            object[] valueList2 = { value };
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