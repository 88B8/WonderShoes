using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("Product")]
    public partial class Product
    {
        public Product()
        {
            OrderProduct = new HashSet<OrderProduct>();
            ProductSize = new HashSet<ProductSize>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdProduct { get; set; }

        [StringLength(50)]
        public string Category { get; set; }

        [StringLength(50)]
        public string Subcategory { get; set; }

        [StringLength(50)]
        public string Photo { get; set; }

        [StringLength(150)]
        public string ProductName { get; set; }

        public int? ManufacturerId { get; set; }

        public string Description { get; set; }

        public string Сomposition { get; set; }

        public decimal? ProductPrice { get; set; }

        public virtual ICollection<OrderProduct> OrderProduct { get; set; }

        public virtual ICollection<ProductSize> ProductSize { get; set; }

        public virtual Manufacturer Manufacturer { get; set; }

    }
}
