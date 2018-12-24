namespace WebApplication2.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ShopBooks : DbContext
    {
        public ShopBooks()
            : base("name=ShopBooks")
        {
        }

        public virtual DbSet<Books> Books { get; set; }
        public virtual DbSet<Discounts> Discounts { get; set; }
        public virtual DbSet<Transactions> Transactions { get; set; }
        public virtual DbSet<CartDetails> CartDetails { get; set; }
        public virtual DbSet<TransactionDetails> TransactionDetails { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Books>()
                .Property(e => e.Price)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Transactions>()
                .HasMany(e => e.TransactionDetails)
                .WithRequired(e => e.Transactions)
                .WillCascadeOnDelete(false);

            //modelBuilder.Entity<CartDetails>()
            //    .Property(e => e.Price)
            //    .HasPrecision(19, 4);

            //modelBuilder.Entity<CartDetails>()
            //    .Property(e => e.Discount)
            //    .HasPrecision(19, 4);

            modelBuilder.Entity<TransactionDetails>()
                .Property(e => e.Price)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TransactionDetails>()
                .Property(e => e.Discount)
                .HasPrecision(19, 4);
        }
    }
}
