
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using 问渠.DAL;
using 问渠.model;



namespace 问渠.Bll
{
    public class logonBll
    {
        logonDAL dao = new logonDAL();

        public logoninfo login(logoninfo user) {
            logoninfo tep = dao.Query(user.Email);
            if (tep != null && tep.Pwd == user.Pwd)
            {

                return tep;
            }
            else {
                return null;
            }
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public  OperationResult Regist(logoninfo user)
        {
            logoninfo temp = dao.Query(user.Email);
            
            if (temp  != null)
            {
                if (temp.Email == null)
                {
                    int mun = dao.Add(user);
                    if (mun == 1)
                    {
                        return OperationResult.success;
                    }
                    return OperationResult.failure;
                }
                else if(temp.Email != null)
                {
                    return OperationResult.exist;
                }

                return OperationResult.failure;
            }
            else
            {
                int mun = dao.Add(user);
                if (mun == 1)
                {
                    return OperationResult.success;
                }
                return OperationResult.failure;
           }
        }

        /// <summary>
        /// 检索所有用户信息
        /// </summary>
        /// <returns></returns>
        public List<logoninfo> CheckUsers()
        {
            return dao.Query("", false);
        }

        /// <summary>
        /// 根据用户姓名检索用户信息
        /// </summary>
        /// <param name="realName"></param>
        /// <param name="isAccurate"></param>
        /// <returns></returns>
        public List<logoninfo> CheckUsers(string realName, bool isAccurate)
        {
            return null;
        }

        /// <summary>
        /// 更新用户基本信息
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public bool Update(logoninfo user)
        {
            return false;
        }

        /// <summary>
        /// 重置用户密码
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public bool ResetPwd(logoninfo user)
        {
            return false;
        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="oldPwd"></param>
        /// <param name="newPwd"></param>
        /// <returns></returns>
        public bool ChangePwd(string userName, string oldPwd, string newPwd)
        {
            return false;
        }

        /// <summary>
        /// 向用户发送邮箱
        /// </summary>
        /// <returns></returns>
        public string useryzm(logoninfo user)
        {
            try
            {

                char[] sjslist = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

                Random ran = new Random();
                string sjs = "";
                for (int i = 0; i < 6; i++)
                {
                    sjs += sjslist[ran.Next(sjslist.Length)];
                }

                MailMessage myEmail = new MailMessage("2214567693@qq.com", user.Email);

                myEmail.Subject = "Email Example";
                myEmail.Body = sjs;
                string str = @"C:\gg.jpeg";

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
                return sjs;
            }
            catch (Exception e)
            {

                string ss = "失败";
                return ss;
            }
            
        }       
    }
}
