using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wenbook.DAL;
using wenbook.model;
using 问渠.Bll;
using 问渠.model;

namespace wenbook.Bll
{
    public class FileUploadBll
    {
        fileuploadDAL dao = new fileuploadDAL();
       
        /// <summary>
        /// 上传图片
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Regist(FileUploadInfo file)
        {
            
                int mun = dao.Add(file);
                if (mun == 1)
                {
                    return OperationResult.success;
                }
                return OperationResult.failure;
        }


        /// <summary>
        /// 上传图书馆信息
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Registlib(FileUploadInfo file)
        {

            int mun = dao.Addlib(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }


        /// <summary>
        /// 上传电子书
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Registfile(UpEbook file)
        {

            int mun = dao.fileupEbook(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }


        /// <summary>
        /// 上传图书
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Registbook(UpBook file)
        {

            int mun = dao.fileupbook(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }

        /// <summary>
        /// 根据path查修
        /// </summary>
        /// <returns></returns>

        public FileUploadInfo select(FileUploadInfo user) {
            FileUploadInfo tep = dao.Query(user.path);
            if (tep != null)
            {
                return tep;
            }
            else {
                return null;
            }
        }

        /// <summary>
        /// 根据图书馆查修
        /// </summary>
        /// <returns></returns>

        public FileUploadInfo selectlib(FileUploadInfo user)
        {
            FileUploadInfo tep = dao.Querylib(user.name);
            if (tep != null)
            {

                return tep;
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 检索所有用户信息
        /// </summary>
        /// <returns></returns>
        public List<FileUploadInfo> CheckUsers()
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
    }
}
