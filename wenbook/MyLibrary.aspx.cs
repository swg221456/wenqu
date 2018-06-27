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
    public partial class MyLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SQLHelper db = new SQLHelper();
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection coon = new SqlConnection();

            string cmdText = "select * from T_Library where province like  @province";
            string[] paramList = { "@province" };
            object[] valueList = { };




            DataSet da = db.FillDataSet(cmdText, paramList, valueList);



            GridView2.DataSource = da;
            GridView2.DataBind();




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection coon = new SqlConnection();

            string cmdText = "select * from T_Library where city like  @city";
            string[] paramList = { "@city" };
            object[] valueList = { this.city.Text.Trim() };




            DataSet da = db.FillDataSet(cmdText, paramList, valueList);



            GridView2.DataSource = da;
            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection coon = new SqlConnection();

            string cmdText = "select * from T_Library where libName like  @libName";
            string[] paramList = { "@libName" };
            object[] valueList = { this.libname.Text.Trim() };




            DataSet da = db.FillDataSet(cmdText, paramList, valueList);



            GridView2.DataSource = da;
            GridView2.DataBind();
        }
    }
}