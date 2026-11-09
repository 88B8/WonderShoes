using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WonderShoes.AppModels
{
    [Table("User")]
    public partial class User
    {
        public User()
        {
            Order = new HashSet<Order>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdUser { get; set; }

        [StringLength(50)]
        public string LastName { get; set; }

        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string PatronymicName { get; set; }

        [StringLength(50)]
        public string Username { get; set; }

        [StringLength(50)]
        public string Role { get; set; }

        public virtual ICollection<Order> Order { get; set; }

        // STUD: методы модели пользователя.
        public bool IsManager()
        {
            return Role == "Менеджер";
        }

        public bool IsAdmin()
        {
            return Role == "Администратор";
        }

        internal bool IsClient()
        {
            return Role == "Авторизованный пользователь";
        }

        public override string ToString()
        {
            return $"{LastName} {FirstName} {PatronymicName}";
        }
    }
}
