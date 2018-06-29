using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace wenbook
{
    public partial class login2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.REInvitation.Enabled = true;
            this.send.EnableViewState = true;
        }

        public void Login(object sender, EventArgs e)
        {

        }
        protected void login_ServerClick(object sender, EventArgs e)
        {
            string emaile = this.Emaile.Value.ToString();
            string Pwd = this.pwd.Value.ToString();
            this.Emaile.Value = emaile;
            if (emaile == "")
            {
                Response.Write("<style>#Emaile{border-color: #de615e;}</style>");
            }
            if (Pwd == "")
            {
                Response.Write("<style>#pwd{border-color: #de615e;}</style>");
            }
            if (emaile != "" && Pwd != "")
            {
                DES des = new DES();
                string str = des.DesEncrypt(Pwd, "12345678");
                string connString = Convert.ToString(ConfigurationManager.ConnectionStrings["SqlConn"]);
                SqlConnection conn = new SqlConnection(connString);//创建数据库链接
                conn.Open();
                string strsql = "select * from T_UserInfo where email='" + emaile + "'and password='" + str + "'";
                SqlCommand cmd = new SqlCommand(strsql, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["Emaile"] = dr["email"];
                    Session["password"] = dr["password"];
                    if (emaile == Session["Emaile"].ToString())
                    {
                        Session["user"] = Session["Emaile"];
                        Response.Redirect("index.aspx", false);
                    }

                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误，请重新输入');</script>");
                }

                dr.Close();
                conn.Close();
            }
        }

        protected void register_ServerClick(object sender, EventArgs e)
        {
            string REmaile = this.Remail.Value.ToString().Trim();
            string UserName = this.userName.Value.ToString().Trim();
            string RPwd1 = this.Rpwd1.Value.ToString().Trim();
            string RPwd2 = this.Rpwd2.Value.ToString().Trim();
            string REinvitation = this.Invitation.Value.ToString().Trim();
            if (REmaile == "")
            {
                Response.Write("<style>#Remail{border-color: #de615e;}</style>");
            }
            if (UserName == "")
            {
                Response.Write("<style>#userName{border-color: #de615e;}</style>");
            }
            if (RPwd1 == "")
            {
                Response.Write("<style>#Rpwd1{border-color: #de615e;}</style>");
            }
            if (RPwd2 == "")
            {
                Response.Write("<style>#Rpwd2{border-color: #de615e;}</style>");
            }
            if (RPwd1 != "" && RPwd2 != "" && RPwd1 != RPwd2)
            {
                Response.Write("<style>#Rpwd2{border-color: #de615e;}</style>");
            }
            if (Session["invitation"] == null)
            {
                Response.Write("<script>alert('请您前往获取邀请码！');</script>");
            }
            else if (REinvitation != Session["invitation"].ToString())
            {
                Response.Write("<script>alert('邀请码输入错误，请您重新操作！');</script>");
            }
            else if (REmaile != "" && UserName != "" && RPwd1 != "" && RPwd2 != "" && RPwd1 == RPwd2)
            {
                //MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();//创建MD5对象
                //byte[] data = System.Text.Encoding.Default.GetBytes(RPwd1);//将字符编码为一个字节序列
                //byte[] md5data = md5.ComputeHash(data);//计算data字节数组的哈希值
                //md5.Clear();//清空MD5对象
                //string str = "";//定义一个变量，用来记录加密后的密码
                //for (int i = 0; i < md5data.Length - 1; i++)//遍历字节数组
                //{
                //    str += md5data[i].ToString("x").PadLeft(2, '0');//对遍历到的字节进行加密
                //}
                DES des = new DES();
                string str = des.DesEncrypt(RPwd1,"12345678");

                string connString = Convert.ToString(ConfigurationManager.ConnectionStrings["SqlConn"]);
                SqlConnection conn = new SqlConnection(connString);//创建数据库链接
                conn.Open();
                string strsql = "select * from T_UserInfo where email = '" + REmaile + "'";
                SqlCommand cmd = new SqlCommand(strsql, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.Write("<script>alert('此邮箱已存在！请您前往登录！');</script>");

                }
                else
                {

                    string CommandText = @"insert into T_UserInfo(nickName,password,email) values('" + UserName + "','" + str + "','" + REmaile + "')";
                    SqlCommand MyCommand = new SqlCommand(CommandText, conn);
                    dr.Close();
                    MyCommand.ExecuteNonQuery();
                    Response.Write("<script>alert('注册成功，请您前往登录！');</script>");

                }
                conn.Close();
                

            }
        }

        protected void send_ServerClick(object sender, EventArgs e)
        {
            string email = this.Email.Value.ToString().Trim();
            if(email == "")
            {
                Response.Write("<script>alert('您尚未输入，请重新操作！');</script>");
            }
            else
            {
                string connString = Convert.ToString(ConfigurationManager.ConnectionStrings["SqlConn"]);
                SqlConnection conn = new SqlConnection(connString);//创建数据库链接
                conn.Open();
                string strsql = "select password from T_UserInfo where email = '" + email + "'";
                SqlCommand cmd = new SqlCommand(strsql, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["pwdstr"] = dr["password"];
                    DES des = new DES();
                    string str = des.DesDecrypt(Session["pwdstr"].ToString(),"12345678");

                    string Content = "您好！您问渠的登录密码为" + str + "，用于您的账号登录，请勿告知他人，如非本人操作请及时联系客服。";

                    MailMessage myEmail = new MailMessage("2214567693@qq.com", email);

                    myEmail.Subject = "Email Example";
                    myEmail.Body = Content;

                    //Attachment myAtt = new Attachment(str,System.Net.Mime.MediaTypeNames.Application.Octet);

                    //myEmail.Attachments.Add(myAtt);

                    string tt = "120768995@qq.com";
                    String wd = "2214567693";
                    string name = "413459804";
                    string pwd = "wfcmwojrqzvwdjfb";
                    String ss = "xdslgjeggzxjcaee";

                    SmtpClient client = new SmtpClient("smtp.qq.com", 25);
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential(wd, pwd);
                    client.Send(myEmail);
                    this.send.EnableViewState = false;

                }
                else
                {
                    Response.Write("<script>alert('该邮箱尚未注册，请重新操作！');</script>");
                }
                conn.Close();
            }
        }

        protected void RInvitation_ServerClick(object sender, EventArgs e)
        {


                try
                {

                    string REmail = Remail.Value.ToString().Trim();

                    char[] sjslist = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

                    Random ran = new Random();
                    string sjs = "";
                    for (int i = 0; i < 6; i++)
                    {
                        sjs += sjslist[ran.Next(sjslist.Length)];
                    }

                    string Content = "您好！，欢迎您使用问渠，问渠的邀请码为" + sjs + "，用于您的账号激活，请勿告知他人，如非本人操作请忽略。";

                    MailMessage myEmail = new MailMessage("2214567693@qq.com", REmail);

                    myEmail.Subject = "Email Example";
                    myEmail.Body = Content;

                    //Attachment myAtt = new Attachment(str,System.Net.Mime.MediaTypeNames.Application.Octet);

                    //myEmail.Attachments.Add(myAtt);

                    string tt = "120768995@qq.com";
                    String wd = "2214567693";
                    string name = "413459804";
                    string pwd = "wfcmwojrqzvwdjfb";
                    String ss = "xdslgjeggzxjcaee";

                    SmtpClient client = new SmtpClient("smtp.qq.com", 25);
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential(wd, pwd);
                    client.Send(myEmail);
                    Session["invitation"] = sjs;

                    this.REInvitation.Enabled = false;
                    

                }
                catch
                {
                }
            }

            
        
    }
}