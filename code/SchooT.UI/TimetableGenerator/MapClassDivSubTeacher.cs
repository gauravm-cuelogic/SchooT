﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchooT.Console
{
    public class MapClassDivSubTeacher
    {
        public int ClassId { get; set; }
        public int DivisionId { get; set; }
        public int SubjectId { get; set; }
        public int TeacherId { get; set; }

        public string ClassName { get; set; }
        public string DivisionName { get; set; }
        public string SubjectName { get; set; }
        public string TeacherName { get; set; }
    }
}
