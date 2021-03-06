﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SchooT.UI.DAL;

namespace SchooT.Console
{
    public class Database
    {
        private TimetableEntities tEntity;

        private void AddClasses()
        {

            var listClasses = tEntity.tClasses.ToList();
            foreach (var cl in listClasses)
            {
                var listDivisions = tEntity.tBatchClassSections.Where(t => t.csc_ClassId == cl.cla_id).Select(t => new Division { Id = t.csc_SectionId, Name = t.tSection.sec_SectionName }).ToList();
                ListClasses.Add(new Class { Id = cl.cla_id, Name = cl.cla_Name, ListDivisions = listDivisions });
            }

        }
        public void AddPeriods()
        {

            ListPeriods = tEntity.tPeriods.Select(t => new Period { Id = t.per_Id, StartTime = t.per_StartTime, EndTime = t.per_EndTime,IsBreak=t.per_IsBreak,Name=t.per_Name }).ToList();

        }
        private void AddDays()
        {
            this.ListDays.Add(new Day { Id = 1, Name = "Mon", Date = new DateTime(2016, 03, 07) });
            this.ListDays.Add(new Day { Id = 2, Name = "Tue", Date = new DateTime(2016, 03, 08) });
            this.ListDays.Add(new Day { Id = 3, Name = "Wed", Date = new DateTime(2016, 03, 09) });
            this.ListDays.Add(new Day { Id = 4, Name = "Thu", Date = new DateTime(2016, 03, 10) });
            this.ListDays.Add(new Day { Id = 5, Name = "Fri", Date = new DateTime(2016, 03, 11) });
        }
        private void AddMapClassDivSubjectTeachers()
        {

            var data = from bcs in tEntity.tBatchClassSections
                       join classes in tEntity.tClasses on bcs.csc_ClassId equals classes.cla_id
                       join div in tEntity.tSections on bcs.csc_SectionId equals div.sec_id
                       join classSubject in tEntity.tClassSubjects on classes.cla_id equals classSubject.ClassId
                       join subject in tEntity.tSubjects on classSubject.SubjectId equals subject.sub_Id
                       join staffSubject in tEntity.tStaffSubjects on subject.sub_Id equals staffSubject.stcg_SubjectId
                       join staff in tEntity.tStaffs on staffSubject.stcg_StaffId equals staff.sta_Id
                       select new MapClassDivSubTeacher { ClassId = classes.cla_id, DivisionId = div.sec_id, SubjectId = subject.sub_Id, TeacherId = staff.sta_Id, ClassName = classes.cla_Name, DivisionName = div.sec_SectionName, SubjectName = subject.sub_Name, TeacherName = staff.sta_Name };

            ListMapClassDivSubjectTeachers = data.ToList();

        }

        public Database()
        {
            tEntity = new TimetableEntities();
            this.ListClasses = new List<Class>();
            this.ListPeriods = new List<Period>();
            this.ListDays = new List<Day>();
            this.ListMapClassDivSubjectTeachers = new List<MapClassDivSubTeacher>();
            AddClasses();
            AddPeriods();
            AddDays();
            AddMapClassDivSubjectTeachers();
        }
        public List<Class> ListClasses { get; set; }
        public List<Period> ListPeriods { get; set; }
        public List<Day> ListDays { get; set; }
        public List<MapClassDivSubTeacher> ListMapClassDivSubjectTeachers { get; set; }
        public List<MapClassDivSubTeacher> GetMapClassDivSubTeacherByClassIdAndDivId(int classId, int divId)
        {
            List<MapClassDivSubTeacher> listMapClassDivSubTeacher = new List<MapClassDivSubTeacher>();
            foreach (var item in ListMapClassDivSubjectTeachers)
            {
                if (item.ClassId == classId && item.DivisionId == divId)
                    listMapClassDivSubTeacher.Add(item);
            }
            return listMapClassDivSubTeacher;
        }

    }
}
