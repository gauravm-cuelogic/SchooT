using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchooT.Console
{
    public class Class
    {
        public Class()
        {
            this.ListDivisions = new List<Division>();
        }
        public int Id { get; set; }
        public string Name { get; set; }
        public List<Division> ListDivisions { get; set; }
    }
}
