//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class tStaffSection
    {
        public int Id { get; set; }
        public Nullable<int> BatchClassSectionId { get; set; }
        public Nullable<int> TeacherId { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
        public Nullable<System.DateTime> LastUpdatedDate { get; set; }
        public Nullable<int> LasyUpdatedBy { get; set; }
    
        public virtual tBatchClassSection tBatchClassSection { get; set; }
        public virtual tStaff tStaff { get; set; }
    }
}
