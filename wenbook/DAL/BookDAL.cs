using GTS.DBHelper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using wenbook.model;

namespace wenbook.DAL
{
    public class BookDAL
    {
        SQLHelper db = new SQLHelper();

        public UpBook Querybook(string name)
        {
            string cmdText = "select * from T_Book where bookName = @bookName";
            string[] paramList = { "@bookName" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            UpBook book = new UpBook();
            if (reader.Read())
            {
                book.name = reader["bookName"].ToString();
                book.inthro = reader["author"].ToString();
                book.intrduce = reader["introduce"].ToString();
                book.type = reader["type"].ToString();
                book.path = reader["path"].ToString();

            }
            reader.Close();
            return book;
        }

        public UpEbook Queryebook(string name)
        {
            string cmdText = "select * from T_Ebook where EbookName = @EbookName";
            string[] paramList = { "@EbookName" };
            object[] valueList = { name };
            SqlDataReader reader = db.ExecuteReader(cmdText, paramList, valueList);
            UpEbook book = new UpEbook();
            if (reader.Read())
            {
                book.name = reader["EbookName"].ToString();
                book.inthro = reader["author"].ToString();
                book.intrduce = reader["introduce"].ToString();
                book.type = reader["type"].ToString();
                book.path = reader["path"].ToString();

            }
            reader.Close();
            return book;
        }


    }
}