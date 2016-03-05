using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchooT.Console
{
    public class Generator
    {
        public Generator()
        {
            this.db = new Database();
            this.timeTable = new TimeTable();
        }
        private Database db { get; set; }
        private TimeTable timeTable { get; set; }

        private int rollbackCount = 0;

        private bool AssignedForDay(int classId, int divisionId, int dayId, int periodId, int subjectId)
        {
            var listLectures = timeTable.ListLectures;
            foreach (var lecture in listLectures)
            {
                var exist = (lecture.ClassId == classId) &&
                           (lecture.DivisionId == divisionId) &&
                           (lecture.DayId == dayId) &&
                           (lecture.SubjectId==subjectId);
                if (exist)
                    return true;
            }
            return false;
        }
        private bool Assigned(int dayId, int periodId, int teacherId)
        {
            var listLectures = timeTable.ListLectures;
            foreach (var lecture in listLectures)
            {
                var exist = (lecture.DayId == dayId) &&
                           (lecture.PeriodId == periodId) &&
                           (lecture.TeacherId == teacherId);
                if (exist)
                    return true;
            }
            return false;
        }

        private void AddLecture(int classId, int divisionId, int subjectId, int dayId, int periodId, int teacherId,string className,string divisionName,string subjectName,string TeacherName,TimeSpan? startTime,TimeSpan? endTime,Day day)
        {
            var lecture = new Lecture
            {
                Day=day,
                ClassId = classId,
                DivisionId = divisionId,
                SubjectId = subjectId,
                DayId = dayId,
                PeriodId = periodId,
                TeacherId = teacherId,

                ClassName=className,
                DivisionName=divisionName,
                SubjectName=subjectName,
                TeacherName=TeacherName,
                StartTime=startTime,
                EndTime=endTime
            };
            this.timeTable.ListLectures.Add(lecture);
        }

        private void RemoveLecture(int classId,int divisionId)
        {
            timeTable.ListLectures.RemoveAll(t => t.ClassId == classId && t.DivisionId == divisionId);
        }

        private bool Valid(int classId, int divisionId, int subjectId, int dayId, int periodId, int teacherId)
        {
            var assigned = Assigned(dayId, periodId, teacherId);
            var assignedForDay = AssignedForDay(classId, divisionId, dayId, periodId, subjectId);
            return !(assigned || assignedForDay);
        }

        public TimeTable GetTimeTable()
        {
            var listClasses = db.ListClasses;//List of All classes
            var listDays = db.ListDays;//List of all days
            var listMapClassDivSubTeachers = db.ListMapClassDivSubjectTeachers;//List of MapClass_Division_Subject_Teacher
            foreach (var cl in listClasses)
            {
                foreach (var division in cl.ListDivisions)
                {
                    foreach (var day in listDays)
                    {
                        var listPeriods = db.ListPeriods;//List one day periods;
                        foreach (var period in listPeriods)
                        {
                            var periodAssigned = false;
                            while (!periodAssigned)
                            {
                                if (rollbackCount == 100)//It check 100 random possibility if not matched it breaks;
                                    break;

                                var filterdListMapClassDivSubTeachers = db.GetMapClassDivSubTeacherByClassIdAndDivId(cl.Id, division.Id);
                                var suffledList = filterdListMapClassDivSubTeachers.OrderBy(a => Guid.NewGuid());
                                if (suffledList.Count() == 0)
                                    break;
                                foreach (var mapClassDivSubTeacher in suffledList)
                                {
                                    var valid = Valid(cl.Id, division.Id, mapClassDivSubTeacher.SubjectId, day.Id, period.Id, mapClassDivSubTeacher.TeacherId);
                                    if (valid)
                                    {
                                        rollbackCount = 0;
                                        periodAssigned = true;
                                        //AddLecture(cl.Id, division.Id, mapClassDivSubTeacher.SubjectId, day.Id, period.Id, mapClassDivSubTeacher.TeacherId);
                                        AddLecture(cl.Id, division.Id, mapClassDivSubTeacher.SubjectId, day.Id, period.Id, mapClassDivSubTeacher.TeacherId,mapClassDivSubTeacher.ClassName,mapClassDivSubTeacher.DivisionName,mapClassDivSubTeacher.SubjectName,mapClassDivSubTeacher.TeacherName,period.StartTime,period.EndTime,day);
                                        break;
                                    }
                                }
                                if (!periodAssigned)//Remove all lecture to rollback
                                {
                                    rollbackCount++;
                                    RemoveLecture(cl.Id, division.Id);
                                }
                            }                            
                        }
                    }
                }
            }
            return timeTable;
        }
    }
}
