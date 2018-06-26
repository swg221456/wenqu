using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wenbook.model;

namespace wenbook.DAL
{
    public class commemtDAL
    {

        SQLHelper db = new SQLHelper();

        public int Add(comment user)
        {
            string cmdText = "insert into T_Comment(userName,bookName,bookType,reviewContent,time,praiseCount) values(@userName,@bookName,@bookType,@reviewContent,@time,@praiseCount)";
            string[] paramList = { "@userName","@bookName","@bookType","@reviewContent","@time","@praiseCount" };
            object[] valueList = { user.userName, user.bookName,user.type, user.reviewContent,user.time,0 };
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }
    }
}