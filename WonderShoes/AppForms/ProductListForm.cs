using System;
using System.Collections.Generic;
using System.Data.Entity;
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
            RefreshList();
        }

        private void RefreshList()
        {
            flowLayoutPanel1.SuspendLayout();
            try
            {
                ClearProducts();
                SelectProducts();
                ShowProducts();
            }
            finally
            {
                flowLayoutPanel1.ResumeLayout();
            }
        }

        private void ClearProducts()
        {
            var cards = flowLayoutPanel1.Controls.Cast<Control>().ToArray();
            flowLayoutPanel1.Controls.Clear();
            foreach (Control card in cards)
            {
                card.Dispose();
            }
        }

        private void SelectProducts()
        {
            string searchInput = searchTextBox.Text.Trim();
            bool cheapFirstInput = cheapFirst.Checked;
            string categoryInput = (string)categoryComboBox.SelectedItem;

            IQueryable<Product> query = Program.context.ProductSize
                .Where(p => p.Stock > 0)
                .Select(p => p.Product)
                .Distinct();

            if (!string.IsNullOrEmpty(searchInput))
            {
                string pattern = "%" + searchInput + "%";
                query = query.Where(p => DbFunctions.Like(p.ProductName, pattern)
                    || DbFunctions.Like(p.Description, pattern));
            }

            if (categoryInput != null && categoryInput != "Все категории")
            {
                query = query.Where(p => p.Category == categoryInput);
            }

            _products = query.ToList();
        }

        private void ShowProducts()
        {
            foreach (Product product in _products)
            {
                flowLayoutPanel1.Controls.Add(new ProductUserControl(product));
            }
        }

        private void cheapFirst_CheckedChanged(object sender, EventArgs e)
        {
            if (cheapFirst.Checked)
                RefreshList();
        }

        private void expensiveFirst_CheckedChanged(object sender, EventArgs e)
        {
            if (expensiveFirst.Checked)
                RefreshList();
        }

        private void categoryComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshList();
        }

        private void searchTextBox_TextChanged(object sender, EventArgs e)
        {
            RefreshList();
        }
    }
}
