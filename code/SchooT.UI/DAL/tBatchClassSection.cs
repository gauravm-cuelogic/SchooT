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
    
    public partial class tBatchClassSection
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tBatchClassSection()
        {
            this.tStaffSections = new HashSet<tStaffSection>();
            this.tTimeTables = new HashSet<tTimeTable>();
        }
    
        public int csc_BatchClassSectionId { get; set; }
        public int csc_SectionId { get; set; }
        public int csc_ClassId { get; set; }
        public int csc_BatchId { get; set; }
        public Nullable<bool> csc_IsDeleted { get; set; }
        public Nullable<int> csc_DeletedBy { get; set; }
        public Nullable<int> csc_CreatedBy { get; set; }
        public Nullable<System.DateTime> csc_CreatedDate { get; set; }
        public Nullable<System.DateTime> csc_LastUpdatedDate { get; set; }
        public Nullable<int> csc_LastUpdateBy { get; set; }
    
        public virtual tBatch tBatch { get; set; }
        public virtual tClass tClass { get; set; }
        public virtual tSection tSection { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tStaffSection> tStaffSections { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tTimeTable> tTimeTables { get; set; }
    }
}
