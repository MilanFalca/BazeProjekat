using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class IzmeniGarazuViewModel : Screen
    {
        private string _nazivGraze;
        private int _brojGaraze;
        private Garaza _selectedGaraza;

        private AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO _dao;

        public IzmeniGarazuViewModel(Garaza selectedGaraza)
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO();
            SelectedGaraza = selectedGaraza;
            Naziv = SelectedGaraza.Naziv;
            Broj = SelectedGaraza.Broj;

            Console.WriteLine("Selected garaza is " + SelectedGaraza.GarazaId);
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

        public Garaza SelectedGaraza
        {
            get { return _selectedGaraza; }
            set { _selectedGaraza = value; }
        }

        public void Izmeni()
        {

            SelectedGaraza.Naziv = Naziv;
            SelectedGaraza.Broj = Broj;


            _dao.Update(SelectedGaraza);
        }
    }
}
