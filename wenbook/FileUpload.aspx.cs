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
    public partial class FileUpload : System.Web.UI.Page
    {

        FileUploadBll bll = new FileUploadBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] List = { "都市传奇", "玄幻", "仙侠修真", "灵异", "历史", "游戏竞技", "科幻", "武侠", "奇幻", "古代言情", "现代言情", "玄幻言情", "校园生活", "其他" };
            for (int i = 1; i <List.Length; i++)
            {
                DropDownList1.Items.Add(List[i]);
                DropDownList2.Items.Add(List[i]);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
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
                        this.Image1.ImageUrl = "~/image/" + FileUpload1.FileName;
                        this.FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName);

                        this.Label1.Text = this.FileUpload1.PostedFile.FileName;
                        this.Label2.Text = this.FileUpload1.PostedFile.ContentLength + "字节.";
                        this.Label3.Text = this.FileUpload1.PostedFile.ContentType;

                        FileUploadInfo info = new FileUploadInfo(this.Label1.Text, this.Label3.Text);
                        this.FileUpload1.SaveAs(Server.MapPath("~/UploadPic/") + FileUpload1.FileName);

                        OperationResult op = bll.Regist(info);
                        if (op.ToString() == "exist")
                        {
                            this.Label4.Text = "记录已存在";
                        }
                        else if (op.ToString() == "success")
                        {
                            this.Label4.Text = "成功";
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

        protected void Button2_Click1(object sender, EventArgs e)
        {
            bool fileVaild = false;
            if (this.FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                string[] restrict = { ".txt" };
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
                        this.Image1.ImageUrl = "~/image/" + FileUpload1.FileName;
                        this.FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName);

                        string name = this.FileUpload1.PostedFile.FileName;
                       
                        string type = this.FileUpload1.PostedFile.ContentType;

                        FileUploadInfo info = new FileUploadInfo(name, type);


                        OperationResult op = bll.Regist(info);
                        if (op.ToString() == "exist")
                        {

                        }
                        else if (op.ToString() == "success")
                        {


                            FileUploadInfo lbg = new FileUploadInfo(this.Label1.Text, this.Label3.Text);

                            lbg = bll.select(lbg);

                            FileUploadInfo lg = new FileUploadInfo(this.EbookName.Text, this.Eauthor.Text, this.intrduce.Text, this.DropDownList1.Items.ToString(), lbg.path);
                            OperationResult bp = bll.Registfile(lg);

                            if (bp.ToString() == "exist")
                            {
                                this.ebooktishi.Text = "记录已存在";
                            }
                            else if (bp.ToString() == "success")
                            {
                                this.ebooktishi.Text = "成功.";
                                this.FileUpload1.SaveAs(Server.MapPath("~/Etext/") + FileUpload1.FileName);

                            }
                            else
                            {
                                this.ebooktishi.Text = "意外";
                            }
                        }
                        else
                        {

                        }

                    }
                    catch
                    {

                    }
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            FileUploadInfo lg = new FileUploadInfo(this.libname.Text, this.lobintr.Text, this.libphone.Text, this.lobpro.Text, this.lobcty.Text, this.adree.Text);
            OperationResult bp = bll.Registlib(lg);

            if (bp.ToString() == "exist")
            {
                this.ebooktishi.Text = "记录已存在";
            }
            else if (bp.ToString() == "success")
            {
                this.ebooktishi.Text = "成功";

            }
            else
            {
                this.ebooktishi.Text = "意外";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            FileUploadInfo lbg = new FileUploadInfo(this.booklib.Text, this.libphone.Text);

            lbg = bll.selectlib(lbg);

            FileUploadInfo lg = new FileUploadInfo(this.bookName.Text,this.author.Text,this.intrduce.Text,DropDownList2.Items.ToString(),this.maxcount.Text,this.usablecount.Text,lbg.path);
            OperationResult bp = bll.Registbook(lg);

            if (bp.ToString() == "exist")
            {
                this.ebooktishi.Text = "记录已存在";
            }
            else if (bp.ToString() == "success")
            {
                this.ebooktishi.Text = "成功.";
                this.FileUpload1.SaveAs(Server.MapPath("~/book/") + FileUpload1.FileName);

            }
            else
            {
                this.ebooktishi.Text = "意外";
            }
        }
    }
}