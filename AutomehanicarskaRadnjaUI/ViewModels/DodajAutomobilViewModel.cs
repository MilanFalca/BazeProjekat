using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class DodajAutomobilViewModel : Screen
    {
        private string _markaAutomobila;
        private DateTime _godinaProizvodnjeAutomobila;
        private int _brojSasijeAutomobila;

        private AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO _dao;

        public DodajAutomobilViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO();
        }
        
        public string MarkaAutomobila
        {
            get { return _markaAutomobila; }
            set
            {
                _markaAutomobila = value;
                NotifyOfPropertyChange(() => _markaAutomobila);
            }
        }

        public DateTime GodinaProizvodnjeAutomobila
        {
            get { return _godinaProizvodnjeAutomobila; }
            set
            {
                _godinaProizvodnjeAutomobila = value;
                NotifyOfPropertyChange(() => _godinaProizvodnjeAutomobila);
            }
        }

        public int BrojSasijeAutomobila
        {
            get { return _brojSasijeAutomobila; }
            set
            {
                _brojSasijeAutomobila = value;
                NotifyOfPropertyChange(() => _brojSasijeAutomobila);
            }
        }

        public void Dodaj()
        {
            var automobil = new AutomehanicarskaRadnjaClassLibrary.Automobil
            {
                MarkaAutomobila = MarkaAutomobila,
                GodinaProizvodnje = GodinaProizvodnjeAutomobila,
                BrojSasije = BrojSasijeAutomobila
            };
            _dao.Insert(automobil);
        }
    }
}
