using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using wenbook.model;

namespace wenbook.DAL
{
    public class bookshelfDAL
    {

        SQLHelper db = new SQLHelper();

        public int Add(Bookinfo user)
        {
            string cmdText = "insert into T_BookShelf(userName,bookName,bookID,bookName) values(@userName,@bookName,@bookID,@bookName)";
            string[] paramList = { "@userName", "@bookName", "@bookID", "@bookName" };
            object[] valueList = { user.username,user.bookname};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }

        public int Adde(Bookinfo user)
        {
            string cmdText = "insert into T_EbookShelf(userName,bookName,bookID,bookName) values(@userName,@bookName,@bookID,@bookName)";
            string[] paramList = { "@userName", "@bookName", "@bookID","@bookName" };
            object[] valueList = { user.username, user.bookname};
            return db.ExecuteNoneQuery(cmdText, paramList, valueList);
        }


        public Bookinfo Querybook(string name)
        {
            string cmdText = "select * from T_Book where bookName = @bookName";
            string[] paramList = { "@bookName" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            Bookinfo book = new Bookinfo();
            if (reader.Read())
            {
                book.bookid = reader["bookName"].ToString();
                

            }
            reader.Close();
            return book;
        }

        public Bookinfo Queryebook(string name)
        {
            string cmdText = "select * from T_Ebook where ebookName = @ebookName";
            string[] paramList = { "@ebookName" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            Bookinfo book = new Bookinfo();
            if (reader.Read())
            {
                book.bookid = reader["bookName"].ToString();


            }
            reader.Close();
            return book;
        }

        public Bookinfo Queryuser(string name)
        {
            string cmdText = "select * from T_UserInfo where userName = @userName";
            string[] paramList = { "@userName" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            Bookinfo book = new Bookinfo();
            if (reader.Read())
            {
                book.userid = reader["userName"].ToString();
               

            }
            reader.Close();
            return book;
        }
    }
}