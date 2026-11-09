using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using WonderShoes.AppControls;
using WonderShoes.AppModels;

namespace WonderShoes.AppForms
{
    public partial class ProductListForm : ParentForm
    {
        private List<Product> _products;

        public ProductListForm()
        {
            InitializeComponent();
            SetTitle("Каталог товаров");
        }

        private void ProductListForm_Load(object sender, EventArgs e)
        {
            SelectProducts();
            ShowProducts();
        }

        private void SelectProducts()
        {
            _products = Program.context.ProductSize
                .Where(p => p.Stock > 0)
                .Select(p => p.Product)
                .Distinct().ToList();
        }

        private void ShowProducts()
        {
            foreach (Product product in _products)
            {
                flowLayoutPanel1.Controls.Add(new ProductUserControl(product));
            }
        }
    }
}
