using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wenbook.model
{
    public class EbookInfo
    {
        public string path { get; set; }
        public string type { get; set; }



        public string name { get; set; }
        public string inthro { get; set; }
        public string intrduce { get; set; }

        public EbookInfo()
        {

        }

        public EbookInfo(string name)
        {
            this.name = name;
        }

        public EbookInfo(string name, string inthro, string intrduce, string type, string path)
        {
            this.name = name;
            this.inthro = inthro;
            this.intrduce = intrduce;
            this.type = type;
            this.path = path;
        }

        
       
    }
}