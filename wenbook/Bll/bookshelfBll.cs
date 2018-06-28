using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wenbook.DAL;
using wenbook.model;
using 问渠.Bll;

namespace wenbook.Bll
{
    public class bookshelfBll
    {
        bookshelfDAL dao = new bookshelfDAL();


        /// <summary>
        /// 根据name查修
        /// </summary>
        /// <returns></returns>

        public Bookinfo selectbook(Bookinfo user)
        {
            Bookinfo tep = dao.Querybook(user.username);
            if (tep != null)
            {
                return tep;
            }
            else
            {
                return null;
            }
        }

        public Bookinfo selectebook(Bookinfo user)
        {
            Bookinfo tep = dao.Queryebook(user.username);
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
        /// 根据name查修
        /// </summary>
        /// <returns></returns>

        public Bookinfo selectuser(Bookinfo user)
        {
            Bookinfo tep = dao.Queryuser(user.username);
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
        /// 上传图书
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Regist(Bookinfo file)
        {

            int mun = dao.Add(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }


        /// <summary>
        /// 上传电子书的
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public OperationResult Registe(Bookinfo file)
        {

            int mun = dao.Adde(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }
    }
}