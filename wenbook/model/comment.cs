using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class comment
    {
        public string userName { get; set; }
        public string bookName { get; set; }
        public string reviewContent { get; set; }
        public string time { get; set; }

        public int type { get; set; }
        public comment()
        {

        }

        public comment(string userName, string bookName,int type, string reviewContent, string time)
        {
            this.userName = userName;
            this.bookName = bookName;
            this.type = type;
            this.reviewContent = reviewContent;
            this.time = time;
        }
    }
}