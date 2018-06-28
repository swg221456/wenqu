using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wenbook.Bll;
using wenbook.model;
using 问渠.Bll;

namespace wenbook
{
    public partial class BookMessage : System.Web.UI.Page
    {
        BookBll bll = new BookBll();
        commentBll bal = new commentBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            this.name.Text = Session["name"].ToString();
            this.inth.Text = Session["type"].ToString();



            if (Session["user"] == null)
            {
                this.textshuru.Visible = false;
                this.Button4.Visible = false;
            }

            if (Session["type"].ToString() == null)
            {

            }
            else if (Session["type"].ToString() == "e")
            {
                this.jieyue.Visible = false;
                string name = Session["name"].ToString();
                UpEbook lg = new UpEbook(name);
                lg = bll.selectebook(lg);
                if (lg.path != null)
                {
                    this.smname.Text = lg.name.ToString();
                    this.name.Text = lg.name.ToString();
                    this.inth.Text = lg.inthro.ToString();
                    this.intrduce.Text = lg.intrduce.ToString();
                    this.smtype.Text = lg.type.ToString();


                    this.Image1.ImageUrl = "~/UploadPic/" + lg.path.ToString() + " ";

                    Session["path"] = lg.path.ToString();
                }
                else
                {

                    this.Image1.ImageUrl = "~/image/pic1.jpg";
                }

            }
            else if (Session["type"].ToString() == "b")
            {

                string name = Session["name"].ToString();
                UpBook lg = new UpBook(name);
                lg = bll.selectbook(lg);
                if (lg.path != null)
                {
                    this.smname.Text = lg.name.ToString();
                    this.name.Text = lg.name.ToString();
                    this.inth.Text = lg.inthro.ToString();
                    this.intrduce.Text = lg.intrduce.ToString();
                    this.smtype.Text = lg.type.ToString();

                    this.Image1.ImageUrl = "~/image/" + lg.path.ToString() + " ";


                }
                else
                {


                    this.Image1.ImageUrl = "~/image/pic1.jpg";
                }

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            if (Session["user"] != null)
            {
                string username = Session["user"].ToString();

                string bookname = Session["name"].ToString();

                string text = this.textshuru.Text;

                
                int type = 0;
                if (Session["type"].ToString() == "b")
                {
                     type = 0;
                }
                else
                {
                     type = 1;
                    
                }

                comment lg = new comment(username,bookname,type,text,DateTime.Now.ToLocalTime().ToString());
                OperationResult op = bal.Regist(lg);

                if (op.ToString() == "exist")
                {
                    Response.Write( "记录已存在");
                }
                else if (op.ToString() == "success")
                {
                    Response.Write("成功");
                }

                else
                {
                    Response.Write("意外");
                }

            }
        }
    }
}