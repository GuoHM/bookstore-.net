namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CartDetails
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int BookID { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Quantity { get; set; }

        //[Key]
        //[Column(Order = 2, TypeName = "money")]
        //public decimal Price { get; set; }

        //[Column(TypeName = "money")]
        //public decimal? Discount { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(50)]
        public string UserID { get; set; }
    }
}
