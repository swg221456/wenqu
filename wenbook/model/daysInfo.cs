using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class daysInfo
    {

        public string username { get; set; }

        public string text { get; set; }

        public string time { get; set; }

        public daysInfo()
        {

        }

        public daysInfo(string username, string text, string time)
        {
            this.username = username;
            this.text = text;
            this.time = time;
        }
    }
}