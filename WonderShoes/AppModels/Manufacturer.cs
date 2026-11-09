using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("Manufacturer")]
    public partial class Manufacturer
    {
        public Manufacturer()
        {
            Product = new HashSet<Product>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdManufacturer { get; set; }

        [StringLength(150)]
        public string ManufacturerName { get; set; }

        public virtual ICollection<Product> Product { get; set; }

    }
}
