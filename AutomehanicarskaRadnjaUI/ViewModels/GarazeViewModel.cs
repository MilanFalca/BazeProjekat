using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class GarazeViewModel : Conductor<object>
    {
        IWindowManager manager = new WindowManager();

        public AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO _dao;
        private BindableCollection<Garaza> _garaze;
        public Garaza _selectedGaraza;

        public GarazeViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO();
            Garaze = new BindableCollection<Garaza>(_dao.GetList());
        }

        public Garaza SelectedGaraza
        {
            get
            {
                return _selectedGaraza;
            }
            set
            {
                _selectedGaraza = value;
                NotifyOfPropertyChange(() => SelectedGaraza);
            }
        }

        public BindableCollection<Garaza> Garaze
        {
            get
            {
                return _garaze;
            }
            set
            {
                _garaze = value;
                NotifyOfPropertyChange(() => Garaze);
            }
        }

        public void DodajGarazu()
        {
            manager.ShowDialog(new DodajGarazuViewModel(), null, null);
            Garaze = new BindableCollection<Garaza>(_dao.GetList());
        }

        public void ObrisiGarazu()
        {
            _dao.Delete(_selectedGaraza.GarazaId);
            Garaze = new BindableCollection<Garaza>(_dao.GetList());
        }

        public void IzmeniGarazu()
        {
            manager.ShowDialog(new IzmeniGarazuViewModel(SelectedGaraza), null, null);
            // _dao.Update(_selectedGaraza);
            Garaze = new BindableCollection<Garaza>(_dao.GetList());
        }
    }
}
