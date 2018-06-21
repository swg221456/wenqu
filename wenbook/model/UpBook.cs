using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class UpBook
    {
        public string path { get; set; }
        public string type { get; set; }



        public string name { get; set; }
        public string inthro { get; set; }
        public string intrduce { get; set; }

        public string bookID { get; set; }


        public string phone { get; set; }
        public string province { get; set; }

        public string city { get; set; }

        public string adreess { get; set; }

        public string maxcount { get; set; }

        public string usablecount { get; set; }


        

        public UpBook(string name, string inthro, string intrduce, string type, string maxcount, string usablecount, string bookID)
        {
            this.name = name;
            this.inthro = inthro;
            this.intrduce = intrduce;
            this.maxcount = maxcount;
            this.usablecount = usablecount;
            this.type = type;
            this.bookID = bookID;

        }

        public UpBook(string name, string inthro, string intrduce, string type, string maxcount, string usablecount, string bookID, string path)
        {
            this.name = name;
            this.inthro = inthro;
            this.intrduce = intrduce;
            this.maxcount = maxcount;
            this.usablecount = usablecount;
            this.type = type;
            this.bookID = bookID;
            this.path = path;
        }
    }
}