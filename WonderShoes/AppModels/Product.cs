using System;
using System.Drawing;
using System.Windows.Forms;
using System.Linq;
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

        // STUD {
        /// <summary>
        /// Цена в рублях со скидкой 25%, если на товар не было заказов
        /// в апреле текущего года.
        /// </summary>
        /// <returns>Цена товара, округлённая до двух знаков.</returns>
        public decimal GetPrice()
        {
            int currentYear = DateTime.Now.Year;
            bool hasSales = Program.context.OrderProduct.Count(op =>
                op.ProductId == this.IdProduct &&
                op.Order.Date.HasValue &&
                op.Order.Date.Value.Year == currentYear &&
                op.Order.Date.Value.Month == 4) > 0;

            decimal result = ProductPrice.GetValueOrDefault();
            if (!hasSales)
            {
                result = Math.Round(result * 0.75m, 2);
            }
            return result;
        }

        /// <summary>
        /// Обозначение остатка: «Много» при количестве более пяти,
        /// иначе «Мало».
        /// </summary>
        /// <returns>Обозначение суммарного остатка размеров товара.</returns>
        public string GetStock()
        {
            int stock = ProductSize.Sum(p => p.Stock) ?? 0;
            return stock > 5 ? "Много" : "Мало";
        }
        /// <summary>
        /// Изображение товара из каталога img рядом с приложением.
        /// </summary>
        /// <returns>Изображение, указанное в поле Photo.</returns>
        public Image GetImage()
        {
            string imgPath = System.IO.Path.Combine(Application.StartupPath, "img", Photo);
            Image img = Image.FromFile(imgPath);
            return img;
        }

        /// <summary>
        /// Критически низкий запас: суммарный остаток не более трёх пар.
        /// </summary>
        /// <returns>Признак критически низкого запаса.</returns>
        public bool IsRunningLow()
        {
            int stock = ProductSize.Sum(p => p.Stock) ?? 0;
            return stock <= 3;
        }
        // } STUD

    }
}
