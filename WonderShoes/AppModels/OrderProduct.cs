using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("OrderProduct")]
    public partial class OrderProduct
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdOrderProduct { get; set; }

        public int? OrderId { get; set; }

        public int? ProductId { get; set; }

        public double? Size { get; set; }

        public int? Amount { get; set; }

        public decimal? OrderProductPrice { get; set; }

        public virtual Order Order { get; set; }

        public virtual Product Product { get; set; }

    }
}
