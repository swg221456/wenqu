using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using 问渠.model;
using 问渠.Bll;
using GTS.DBHelper;
using System.Data;
using System.Data.SqlClient;

namespace 问渠.DAL
{
    public class logonDAL
    {
        SQLHelper db = new SQLHelper();

        public int Add(logoninfo user)
        {
            string cmdText = "insert into T_UserInfo(userName,password,sex,email) values(@userName,@password,@sex,@email)";
            string[] paramList = { "@email", "@userName", "@password" ,"@sex"};
            object[] valueList = { user.Email, user.Name, user.Pwd,user.sex};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int Delete(string Email)
        {
            string cmdText = "delete from T_UserInfo where userName=@userName";
            string[] paramList = { "@userName" };
            object[] valueList = { Email };
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int Update(logoninfo user)
        {
            string cmdText = "update T_UserInfo set pwd=@pwd,realName=@realName where userName=@userName";
            string[] paramList = { "@email", "@password", "@userName" };
            object[] valuesList = { user.Email, user.Pwd, user.Name };
            return db.ExecuteNoneQuery(cmdText, paramList, valuesList);
        }

        public logoninfo Query(string Email)
        {
            string cmdText = "select * from T_UserInfo where email = @email";
            string[] paramList = { "@email" };
            object[] valueList = { Email };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            logoninfo user = new logoninfo();
            if (reader.Read())
            {
                user.Email = reader["email"].ToString(); ;
                user.Pwd = reader["password"].ToString();
                user.Name = reader["userName"].ToString();
                user.sex = reader["sex"].ToString();
            }
            reader.Close();
            return user;
        }

        public List<logoninfo> Query(string Email, bool isAccurate = false)
        {
            List<logoninfo> userList = new List<logoninfo>();
            DataSet ds = new DataSet();
            if (isAccurate)
            {
                string cmdText = "select * from T_UserInfo where email = @email";
                string[] paramList = { "@email" };
                object[] valueList = { Email };
                ds = db.FillDataSet(cmdText, paramList, valueList);
            }
            else
            {
                string cmdText = "select * from T_UserInfo where email like @email";
                string[] paramList = { "@email" };
                object[] valueList = { "%" + Email + "%" };
                ds = db.FillDataSet(cmdText, paramList, valueList);
            }
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                logoninfo user = new logoninfo(dr["userName"].ToString(), dr["pwd"].ToString(), dr["userName"].ToString(),dr["sex"].ToString());
                userList.Add(user);
            }
            return userList;
        }
    }

}
