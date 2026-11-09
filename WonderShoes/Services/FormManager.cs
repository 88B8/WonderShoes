using System;
using System.Collections.Generic;
using WonderShoes.AppForms;

namespace WonderShoes.Services
{
    internal class FormManager
    {
        private static Stack<ParentForm> _history = new Stack<ParentForm>();

        public static void NavigateTo(ParentForm newForm, ParentForm currentForm, bool log = true)
        {
            if (log == true)
            {
                _history.Push(currentForm);
            }

            newForm.Show();
            currentForm.Hide();
        }

        public static void GoBack(ParentForm currentForm)
        {
            currentForm.Hide();
            ParentForm historicalForm = _history.Pop();
            Type historicalFormType = historicalForm.GetType();
            var newForm = (ParentForm)Activator.CreateInstance(historicalFormType);
            newForm.EntityId = historicalForm.EntityId;
            newForm.Show();
        }
    }
}
