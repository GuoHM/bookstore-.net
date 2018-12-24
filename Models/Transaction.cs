namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Transaction
    {
        public int TransactionID { get; set; }

        [Required]
        [StringLength(50)]
        public string UserID { get; set; }

        [Column(TypeName = "date")]
        public DateTime TransactionDate { get; set; }

        public virtual User User { get; set; }
    }
}
