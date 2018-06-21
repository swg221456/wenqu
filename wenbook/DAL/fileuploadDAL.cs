using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using wenbook.model;

namespace wenbook.DAL
{
    public class fileuploadDAL
    {

        SQLHelper db = new SQLHelper();

        public int Add(FileUploadInfo user)
        {
            string cmdText = "insert into T_Path(path,type) values(@path,@type)";
            string[] paramList = { "@path", "@type"};
            object[] valueList = {user.path,user.type};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }


        public int Addlib(FileUploadInfo user)
        {
            string cmdText = "insert into T_Library(libName,introduce,phone,province,city,address,isDelete,path) values(@libName,@introduce,@phone,@province,@city,@address,@isDelete,@path)";
            string[] paramList = { "@libName","@introduce","@phone","@province","@city","@address","@isDelete", "path" };
            object[] valueList = {user.name,user.intrduce,user.phone,user.province,user.city,user.adreess,0,user.path};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int fileupbook(UpBook file)
        {
            string cmdText = "insert into T_Book(bookName,author,introduce,type,maxCount,usableCount,libID,borrowTimes,isDelete,path) values(@EbookName,@author,@introduce,@type,@maxCount,@usableCount,@libID,@borrowTimes,@isDelete,@path)";
            string[] paramList = { "@EbookName", "@author", "@introduce" ,"@maxCount","@usableCount","type","@libID","@borrowTimes","@isDelete", "@path" };
            object[] valueList = {file.name , file.inthro , file.intrduce,file.maxcount,file.usablecount,file.type,file.bookID,0,0,file.path};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int fileupEbook(UpEbook file)
        {
            string cmdText = "insert into T_Ebook(EbookName,author,type,introduce,pathID,viewTimes,path) values(@EbookName,@author,@type,@introduce,@pathID,@viewTimes,@path)";
            string[] paramList = { "@EbookName", "@author", "@type", "@introduce", "@pathID", "@viewTimes", "@path" };
            object[] valueList = { file.name, file.inthro, file.type, file.intrduce, file.bookID, 0,file.path };
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }


        public int Delete(string Email)
        {
            string cmdText = "delete from UserInfo where userName=@userName";
            string[] paramList = { "@userName" };
            object[] valueList = { Email };
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int Update(FileUploadInfo user)
        {
            string cmdText = "update UserInfo set pwd=@pwd,realName=@realName where userName=@userName";
            string[] paramList = { "@email", "@password", "@userName" };
            object[] valuesList = {};
            return db.ExecuteNoneQuery(cmdText, paramList, valuesList);
        }

        public FileUploadInfo Query(string name)
        {
            string cmdText = "select * from T_Path where path = @path";
            string[] paramList = { "@path" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            FileUploadInfo user = new  FileUploadInfo();
            if (reader.Read())
            {
                user.path= reader["pathID"].ToString();
                
                
            }
            reader.Close();
            return user;
        }

        public FileUploadInfo Querylib(string libName)
        {
            string cmdText = "select * from T_Library where  libName = @libName";
            string[] paramList = { "@libName" };
            object[] valueList = { libName };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            FileUploadInfo user = new FileUploadInfo();
            if (reader.Read())
            {
                user.path = reader["libID"].ToString();

            }
            reader.Close();
            return user;
        }

        public List<FileUploadInfo> Query(string Email, bool isAccurate = false)
        {
            List<FileUploadInfo> userList = new List<FileUploadInfo>();
            DataSet ds = new DataSet();
            if (isAccurate)
            {
                string cmdText = "select * from UserInfo where email = @email";
                string[] paramList = { "@email" };
                object[] valueList = { Email };
                ds = db.FillDataSet(cmdText, paramList, valueList);
            }
            else
            {
                string cmdText = "select * from UserInfo where email like @email";
                string[] paramList = { "@email" };
                object[] valueList = { "%" + Email + "%" };
                ds = db.FillDataSet(cmdText, paramList, valueList);
            }
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                FileUploadInfo user = new FileUploadInfo();
                userList.Add(user);
            }
            return userList;
        }
    }
}