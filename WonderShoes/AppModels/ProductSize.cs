using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("ProductSize")]
    public partial class ProductSize
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdProductSize { get; set; }

        public int? ProductId { get; set; }

        public double? Size { get; set; }

        public int? Stock { get; set; }

        public int? InitialStock { get; set; }

        public virtual Product Product { get; set; }

    }
}
