using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class DodajGarazuViewModel : Screen
    {
        private string _nazivGraze;
        private int _brojGaraze;

        private AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO _dao;

        public DodajGarazuViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO();
        }
        
        public string Naziv
        {
            get { return _nazivGraze; }
            set
            {
                _nazivGraze = value;
                NotifyOfPropertyChange(() => _nazivGraze);
            }
        }

        public int Broj
        {
            get { return _brojGaraze; }
            set
            {
                _brojGaraze = value;
                NotifyOfPropertyChange(() => _brojGaraze);
            }
        }

        public void Dodaj()
        {
            var garaza = new AutomehanicarskaRadnjaClassLibrary.Garaza
            {
                Naziv = Naziv,
                Broj = Broj
            };
            _dao.Insert(garaza);
        }
    }
}
