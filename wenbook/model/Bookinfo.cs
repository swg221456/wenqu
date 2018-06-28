using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class Bookinfo
    {
        public string username { get; set; }

        public string bookname { get; set; }

        public string bookid { get; set; }

        public string userid { get; set; }
        public string text { get; set; }


        public Bookinfo()
        {

        }
        public Bookinfo(string username)
        {
            this.username = username;
        }


        public Bookinfo(string username, string bookname, string bookid, string userid)
        {
            this.username = username;
            this.bookname = bookname;
            this.bookid = bookid;
            this.userid = userid;
        }

    }
}