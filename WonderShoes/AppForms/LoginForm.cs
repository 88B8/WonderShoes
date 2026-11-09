using System;
using System.Windows.Forms;
using WonderShoes.Services;

namespace WonderShoes.AppForms
{
    public partial class LoginForm : ParentForm
    {
        public LoginForm()
        {
            InitializeComponent();
            HideBackButton();
            SetTitle("Вход");
        }

        private void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                AuthManager.Login(usernameTextBox.Text);
                FormManager.NavigateTo(new ProductListForm(), this);
            }
            catch (InvalidOperationException)
            {
                MessageBox.Show("Имя пользователя неверно.", "Имя пользователя неверно.",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void guestButton_Click(object sender, EventArgs e)
        {
            AuthManager.Login("g");
            FormManager.NavigateTo(new ProductListForm(), this);
        }
    }
}
