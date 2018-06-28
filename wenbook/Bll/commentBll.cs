using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wenbook.DAL;
using wenbook.model;
using 问渠.Bll;

namespace wenbook.Bll
{
    public class commentBll
    {

        commemtDAL dao = new commemtDAL();

        public OperationResult Regist(comment file)
        {

            int mun = dao.Add(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }


        public OperationResult Registday(daysInfo file)
        {

            int mun = dao.Addday(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }

        public OperationResult Registbook(daysInfo file)
        {

            int mun = dao.Addday(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }

        public OperationResult Registebook(daysInfo file)
        {

            int mun = dao.Addday(file);
            if (mun == 1)
            {
                return OperationResult.success;
            }
            return OperationResult.failure;
        }
    }
}