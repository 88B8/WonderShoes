using System.Globalization;
using System.Drawing;
using WonderShoes.AppConstants;
using System.Windows.Forms;
using WonderShoes.AppModels;

namespace WonderShoes.AppControls
{
    public partial class ProductUserControl : UserControl
    {
        private Product _product;

        public ProductUserControl(Product product)
        {
            InitializeComponent();
            _product = product;
            ShowInfo();
            HighlightRunningLow();
        }

        private void HighlightRunningLow()
        {
            if (_product.IsRunningLow())
            {
                this.BackColor = ColorTranslator.FromHtml(Constant.LightRed);
            }
        }

        private void ShowInfo()
        {
            manufacturerNameLabel.Text = $"{_product.Manufacturer.ManufacturerName} | {_product.ProductName}";
            categoryLabel.Text = $"Категория: {_product.Category}";
            stockLabel.Text = $"Количество: {_product.GetStock()}";
            compositionLabel.Text = $"Состав: {_product.Сomposition}";
            priceLabel.Text = $"Цена:\n {_product.GetPrice().ToString("0.00", CultureInfo.GetCultureInfo("ru-RU"))} руб.";
            idLabel.Text = $"Id: {_product.IdProduct}";
            photoPictureBox.Image = _product.GetImage();
        }
    }
}
