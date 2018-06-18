using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class FileUploadInfo
    {
        public string path {get;set;}
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


        public FileUploadInfo(string name,string intrduce,string phone,string province,string city,string adreess)
        {
            this.name = name;
            this.intrduce = intrduce;
            this.phone = phone;
            this.province = province;
            this.city = city;
            this.adreess = adreess;
        }


        public FileUploadInfo()
        {

        }
        public FileUploadInfo(string path, string type)
        {
            this.path = path;
            this.type = type;
        }

        public FileUploadInfo(string name, string inthro, string intrduce,string type,string bookID)
        {
            this.name = name;
            this.inthro = inthro;
            this.intrduce = intrduce;
            this.type = type;
            this.bookID = bookID;
        }

        public FileUploadInfo(string name, string inthro, string intrduce, string type,string maxcount,string usablecount, string bookID)
        {
            this.name = name;
            this.inthro = inthro;
            this.intrduce = intrduce;
            this.maxcount = maxcount;
            this.usablecount = usablecount;
            this.type = type;
            this.bookID = bookID;
        }
    }
}