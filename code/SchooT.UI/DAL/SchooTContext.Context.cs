﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchooT.UI.DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TimetableEntities : DbContext
    {
        public TimetableEntities()
            : base("name=TimetableEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tBatch> tBatches { get; set; }
        public virtual DbSet<tBatchClassSection> tBatchClassSections { get; set; }
        public virtual DbSet<tClass> tClasses { get; set; }
        public virtual DbSet<tClassSubject> tClassSubjects { get; set; }
        public virtual DbSet<tHoliday> tHolidays { get; set; }
        public virtual DbSet<tHolidayType> tHolidayTypes { get; set; }
        public virtual DbSet<tPeriod> tPeriods { get; set; }
        public virtual DbSet<tSection> tSections { get; set; }
        public virtual DbSet<tStaff> tStaffs { get; set; }
        public virtual DbSet<tStaffSection> tStaffSections { get; set; }
        public virtual DbSet<tStaffSubject> tStaffSubjects { get; set; }
        public virtual DbSet<tStaffType> tStaffTypes { get; set; }
        public virtual DbSet<tSubject> tSubjects { get; set; }
        public virtual DbSet<tTimeTable> tTimeTables { get; set; }
        public virtual DbSet<tTimeTableConstraintType> tTimeTableConstraintTypes { get; set; }
    }
}