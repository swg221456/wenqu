using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 问渠.model
{
    public class logoninfo
    {
        public string Email { get; set; } 
        public string Name { get; set; }
        public string Pwd { get; set; }

        public string sex { get; set; }


        public logoninfo() { }

        public logoninfo(string Email) {
            this.Email = Email;
        }



        public logoninfo(string Email, string Name, string Pwd)
        {
            this.Name = Name;
            this.Pwd = Pwd;
            this.Email = Email;
        }

        public logoninfo(string Email, string Name, string Pwd,string sex)
        {
            this.Name = Name;
            this.Pwd = Pwd;
            this.Email = Email;
            this.sex = sex;
        }
    }
}