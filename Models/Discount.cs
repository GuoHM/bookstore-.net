namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Discount
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int BookID { get; set; }

        [Key]
        [Column(Order = 1, TypeName = "date")]
        public DateTime StartDate { get; set; }

        [Key]
        [Column(Order = 2, TypeName = "date")]
        public DateTime EndDate { get; set; }

        [Key]
        [Column("Discount", Order = 3)]
        public double Discount1 { get; set; }

        public virtual Book Book { get; set; }
    }
}
