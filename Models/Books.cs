namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Books
    {
        [Key]
        public int BookID { get; set; }

        [Required]
        [StringLength(50)]
        public string BookTitle { get; set; }

        [Required]
        [StringLength(50)]
        public string Author { get; set; }

        [Required]
        [StringLength(30)]
        public string ISBN { get; set; }

        [Required]
        [StringLength(50)]
        public string Category { get; set; }

        public int Quantity { get; set; }

        [Column(TypeName = "money")]
        public decimal Price { get; set; }

        [StringLength(50)]
        public string Publisher { get; set; }
    }
}
