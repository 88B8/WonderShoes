using System;
using System.Windows.Forms;

namespace WonderShoes.AppForms
{
    public partial class ParentForm : Form
    {
        public int EntityId { get; set; } = -1;

        public ParentForm()
        {
            InitializeComponent();
        }

        public void HideBackButton()
        {
            backButton.Visible = false;
        }

        public void SetTitle(string title)
        {
            titleLabel.Text = title;
            Text = "\"Чудо Обувь\": " + title;
        }

        private void ParentForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
