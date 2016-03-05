using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchooT.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            var generator = new Generator();
            var timeTable = generator.GetTimeTable();
            System.Console.WriteLine("ClassId DivId DayId PeriodId SubId TeacherId");
            foreach(var lecture in timeTable.ListLectures)
            {
                System.Console.Write(" |   "+lecture.ClassId);
                System.Console.Write(" |  "+lecture.DivisionId);
                System.Console.Write(" |   "+lecture.DayId);
                System.Console.Write("  |    "+lecture.PeriodId);
                System.Console.Write(" |    " + lecture.SubjectId);
                System.Console.WriteLine("  |  "+lecture.TeacherId);
            }
            System.Console.ReadKey();
        }
    }
}
