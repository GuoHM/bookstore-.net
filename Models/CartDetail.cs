namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CartDetail
    {
        public int BookID { get; set; }

        public int Quantity { get; set; }

        [Required]
        [StringLength(50)]
        public string UserID { get; set; }

        [Key]
        public int CartID { get; set; }

        public virtual Book Book { get; set; }
    }
}
