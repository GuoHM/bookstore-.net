namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BookDescription")]
    public partial class BookDescription
    {
        public int BookId { get; set; }

        [Column("BookDescription", TypeName = "text")]
        [Required]
        public string BookDescription1 { get; set; }

        [Key]
        public int BookDescId { get; set; }
    }
}
