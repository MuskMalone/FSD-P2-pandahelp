using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FSD_P2_pandahelp.App_Code
{
    public class Review
    {
        public string desc { get; set; }
        public int rating { get; set; }
        public Student reviewer { get; set; }
        public Student reviewee { get; set; }

    }
}