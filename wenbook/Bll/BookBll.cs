using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wenbook.DAL;
using wenbook.model;

namespace wenbook.Bll
{
    public class BookBll
    {

        BookDAL dao = new BookDAL();

        /// <summary>
        /// 根据name查修
        /// </summary>
        /// <returns></returns>

        public UpBook selectbook(UpBook user)
        {
            UpBook tep = dao.Querybook(user.name);
            if (tep != null)
            {
                return tep;
            }
            else
            {
                return null;
            }
        }

        public UpEbook selectebook(UpEbook user)
        {
            UpEbook tep = dao.Queryebook(user.name);
            if (tep != null)
            {
                return tep;
            }
            else
            {
                return null;
            }
        }

    }
}