using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FSD_P2_pandahelp.App_Code
{
    public class Listing
    {
        public string title { get; set; }
        public string desc { get; set; }
        public string module { get; set; }
        public string paymentMode { get; set; }
        public bool solved { get; set; }
        public List<Student> studentList { get; set; }
        
    }
}