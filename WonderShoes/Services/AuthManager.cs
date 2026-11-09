using System.Linq;
using WonderShoes.AppModels;

namespace WonderShoes.Services
{
    internal class AuthManager
    {
        /// <summary>
        /// STUD. Аутентификация по имени пользователя из базы данных.
        /// </summary>
        /// <param name="username">Имя пользователя.</param>
        /// <exception cref="System.InvalidOperationException">Пользователь не найден.</exception>
        public static void Login(string username)
        {
            User user = Program.context.User
                .Where(u => u.Username == username)
                .First();

            UserSession.User = user;
        }
    }
}
