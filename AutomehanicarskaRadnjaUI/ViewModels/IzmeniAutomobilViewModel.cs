using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class IzmeniAutomobilViewModel : Screen
    {
        private string _markaAutomobila;
        private DateTime _godinaProizvodnjeAutomobila;
        private int _brojSasijeAutomobila;
        private Automobil _selectedAutomobil;

        private AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO _dao;

        public IzmeniAutomobilViewModel(Automobil selectedAutomobil)
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO();
            SelectedAutomobil = selectedAutomobil;
            MarkaAutomobila = SelectedAutomobil.MarkaAutomobila;
            GodinaProizvodnjeAutomobila = SelectedAutomobil.GodinaProizvodnje;
            BrojSasijeAutomobila = SelectedAutomobil.BrojSasije;

            Console.WriteLine("Selected auto is " + SelectedAutomobil.AutomobilId);
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

        public Automobil SelectedAutomobil
        {
            get { return _selectedAutomobil; }
            set { _selectedAutomobil = value; }
        }

        public void Izmeni()
        {

            SelectedAutomobil.MarkaAutomobila = MarkaAutomobila;
            SelectedAutomobil.GodinaProizvodnje = GodinaProizvodnjeAutomobila;
            SelectedAutomobil.BrojSasije = BrojSasijeAutomobila;
            
            _dao.Update(SelectedAutomobil);
        }
    }
}
