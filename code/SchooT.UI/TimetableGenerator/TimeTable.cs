using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchooT.Console
{
    public class TimeTable
    {
        public TimeTable()
        {
            this.ListLectures = new List<Lecture>();
        }
        public List<Lecture> ListLectures { get; set; }
    }
}
