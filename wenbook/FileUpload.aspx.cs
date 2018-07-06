using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wenbook.Bll;
using wenbook.model;
using 问渠.Bll;
using 问渠.model;

namespace wenbook
{
    public partial class FileUpload : System.Web.UI.Page
    {

        FileUploadBll bll = new FileUploadBll();
        logonBll bal = new logonBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                logoninfo lg = new logoninfo(Session["user"].ToString());
                lg = bal.selectname(lg);

                this.user.Text = lg.Name;

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

           
            string[] List = { "都市传奇", "玄幻", "仙侠修真", "灵异", "历史", "游戏竞技", "科幻", "武侠", "奇幻", "古代言情", "现代言情", "玄幻言情", "校园生活", "其他" };
            for (int i = 1; i <List.Length; i++)
            {
                DropDownList1.Items.Add(List[i]);
                DropDownList2.Items.Add(List[i]);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null) { 
            bool fileVaild = false;
            if (this.FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                string[] restrict = { ".gif", ".jpg", ".jpeg", ".png", ".txt" };
                for (int i = 0; i < restrict.Length; i++)
                {
                    if (fileExtension == restrict[i])
                    {

                        fileVaild = true;
                    }
                }

                    if (fileVaild == true)
                    {
                        try
                        {
                            this.Image1.ImageUrl = "~/UploadPic/" + FileUpload1.FileName;


                            string path = this.FileUpload1.PostedFile.FileName;


                            FileUploadInfo info = new FileUploadInfo(this.libname.Text, this.lobintr.Text, this.libphone.Text, this.lobpro.Text, this.lobcty.Text, this.adree.Text, path);


                            OperationResult op = bll.Registlib(info);
                            if (op.ToString() == "exist")
                            {
                                this.Label4.Text = "记录已存在";
                            }
                            else if (op.ToString() == "success")
                            {
                                this.Label4.Text = "成功";
                                string user = Session["user"].ToString();
                                string text = user.ToString() + "上传图书馆信息：" + this.libname.Text;
                                daysInfo da = new daysInfo(user, DateTime.Now.ToLocalTime().ToString(),text);
                                commentBll bal = new commentBll();
                                OperationResult ob = bal.Registday(da);
                                

                                    this.FileUpload1.SaveAs(Server.MapPath("~/UploadPic/") + FileUpload1.FileName);
                            }
                            else
                            {
                                this.Label4.Text = "意外";
                            }


                        }
                        catch
                        {

                        }
                    }
                }
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            bool fileVaild = false;
            if (this.FileUpload2.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload2.FileName).ToLower();
                string[] restrict = { ".gif", ".jpg", ".jpeg", ".png", ".txt" };
                for (int i = 0; i < restrict.Length; i++)
                {
                    if (fileExtension == restrict[i])
                    {

                        fileVaild = true;
                    }
                    
                }

                if (fileVaild == true)
                {
                    try
                    {
                        this.Image2.ImageUrl = "~/UploadPic/" + FileUpload2.FileName;

                        string picpath = this.FileUpload2.PostedFile.FileName;
                        string path = this.FileUpload3.PostedFile.FileName;

                      


                            string etype = DropDownList1.SelectedValue.ToString();

                            UpEbook lg = new UpEbook(this.EbookName.Text, this.Eauthor.Text, this.intrduce.Text,etype,path,picpath);
                            OperationResult bp = bll.Registfile(lg);

                            if (bp.ToString() == "exist")
                            {
                                this.ebooktishi.Text = "记录已存在";
                            }
                            else if (bp.ToString() == "success")
                            {
                            string user = Session["user"].ToString();
                            string text = user.ToString() + "上传电子书信息：" + this.EbookName.Text;
                            daysInfo da = new daysInfo(user, DateTime.Now.ToLocalTime().ToString(), text);
                            commentBll bal = new commentBll();
                            OperationResult ob = bal.Registday(da);

                            this.FileUpload2.SaveAs(Server.MapPath("~/UploadPic/") + FileUpload2.FileName);
                            this.FileUpload3.SaveAs(Server.MapPath("~/Etext/") + FileUpload3.FileName);
                            this.ebooktishi.Text = "成功.";

                        }
                            else
                            {
                                this.ebooktishi.Text = "意外";
                            }
                       

                    }
                    catch(Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
        }

       

        protected void Button6_Click(object sender, EventArgs e)
        {
            FileUploadInfo lbg = new FileUploadInfo(this.booklib.Text, this.libphone.Text);

            lbg = bll.selectlib(lbg);
            string type = DropDownList2.SelectedValue.ToString();
            string picpath = this.FileUpload4.PostedFile.FileName;

            UpBook lg = new UpBook(this.bookName.Text,this.author.Text,this.intrduce.Text,type, this.maxcount.Text,this.usablecount.Text,lbg.path,picpath);
            OperationResult bp = bll.Registbook(lg);

            this.Image3.ImageUrl = "~/UploadPic/" + FileUpload4.FileName;


            if (bp.ToString() == "exist")
            {
                this.booktishi.Text = "记录已存在";
            }
            else if (bp.ToString() == "success")
            {

                string user = Session["user"].ToString();
                string text = user.ToString() + "上传图书信息：" + this.bookName.Text;
                daysInfo da = new daysInfo(user, DateTime.Now.ToLocalTime().ToString(), text);
                commentBll bal = new commentBll();
                OperationResult ob = bal.Registday(da);
                this.booktishi.Text = "成功.";
                this.FileUpload4.SaveAs(Server.MapPath("~/UploadPic/") + FileUpload4.FileName);


            }
            else
            {
                this.booktishi.Text = "意外";
            }
        }
    }
}