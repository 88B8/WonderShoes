using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("Order")]
    public partial class Order
    {
        public Order()
        {
            OrderProduct = new HashSet<OrderProduct>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdOrder { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Date { get; set; }

        public int? UserId { get; set; }

        [StringLength(50)]
        public string Status { get; set; }

        public virtual ICollection<OrderProduct> OrderProduct { get; set; }

        public virtual User User { get; set; }

    }
}
