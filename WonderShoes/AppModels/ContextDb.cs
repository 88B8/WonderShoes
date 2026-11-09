using System.Data.Entity;

namespace WonderShoes.AppModels
{
    public partial class ContextDb : DbContext
    {
        static ContextDb()
        {
            // База уже создана в ПР2 и ПР3: EF не должен её пересоздавать.
            Database.SetInitializer<ContextDb>(null);
        }

        public ContextDb() : base("name=ContextDb")
        {
        }

        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<Manufacturer> Manufacturer { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductSize> ProductSize { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderProduct> OrderProduct { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>().Property(e => e.ProductPrice).HasPrecision(18, 2);
            modelBuilder.Entity<OrderProduct>().Property(e => e.OrderProductPrice).HasPrecision(18, 2);

            modelBuilder.Entity<Order>()
                .HasOptional(e => e.User)
                .WithMany(e => e.Order)
                .HasForeignKey(e => e.UserId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OrderProduct>()
                .HasOptional(e => e.Order)
                .WithMany(e => e.OrderProduct)
                .HasForeignKey(e => e.OrderId)
                .WillCascadeOnDelete(true);

            modelBuilder.Entity<OrderProduct>()
                .HasOptional(e => e.Product)
                .WithMany(e => e.OrderProduct)
                .HasForeignKey(e => e.ProductId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Product>()
                .HasOptional(e => e.Manufacturer)
                .WithMany(e => e.Product)
                .HasForeignKey(e => e.ManufacturerId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ProductSize>()
                .HasOptional(e => e.Product)
                .WithMany(e => e.ProductSize)
                .HasForeignKey(e => e.ProductId)
                .WillCascadeOnDelete(false);
        }
    }
}
