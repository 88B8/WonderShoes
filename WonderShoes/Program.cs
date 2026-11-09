using WonderShoes.AppForms;
using WonderShoes.AppModels;
using System;
using System.Windows.Forms;

namespace WonderShoes
{
    internal static class Program
    {
        public static ContextDb context = new ContextDb();

        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            try
            {
                if (!context.Database.Exists())
                {
                    ShowConnectionError();
                    return;
                }
            }
            catch (System.Data.SqlClient.SqlException)
            {
                ShowConnectionError();
                return;
            }
            catch (System.Data.Entity.Core.EntityException)
            {
                ShowConnectionError();
                return;
            }

            Application.Run(new LoginForm());
        }

        private static void ShowConnectionError()
        {
            MessageBox.Show("Ошибка соединения с базой данных", "Ошибка соединения с базой данных",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }
}
