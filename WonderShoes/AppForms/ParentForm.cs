using System;
using System.Windows.Forms;
using WonderShoes.Services;

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

        private void backButton_Click(object sender, EventArgs e)
        {
            FormManager.GoBack(this);
        }

        private void ShowUser()
        {
            if (UserSession.User != null)
            {
                fullNameLabel.Text = $"{UserSession.User}";
                roleLabel.Text = UserSession.User.Role;
            }
        }

        private void ParentForm_Load(object sender, EventArgs e)
        {
            ShowUser();
        }

        private void ParentForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
