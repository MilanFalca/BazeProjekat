using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class ZaposleniViewModel : Conductor<object>
    {
        IWindowManager manager = new WindowManager();

        public AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO _dao;
        private BindableCollection<Zaposleni> _zaposleni;
        public Zaposleni _selectedZaposleni;

        public ZaposleniViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.GlavniMajstorDAO();
            Zaposleni = new BindableCollection<Zaposleni>(_dao.GetList());
        }

        public Zaposleni SelectedZaposleni
        {
            get
            {
                return _selectedZaposleni;
            }
            set
            {
                _selectedZaposleni = value;
                NotifyOfPropertyChange(() => SelectedZaposleni);
            }
        }

        public BindableCollection<Zaposleni> Zaposleni
        {
            get
            {
                return _zaposleni;
            }
            set
            {
                _zaposleni = value;
                NotifyOfPropertyChange(() => Zaposleni);
            }
        }

        public void DodajZaposlenog()
        {
            manager.ShowDialog(new DodajZaposlenogViewModel(), null, null);
            Zaposleni = new BindableCollection<Zaposleni>(_dao.GetList());
        }

        public void ObrisiZaposlenog()
        {
            _dao.Delete(_selectedZaposleni.ZaposleniId);
            Zaposleni = new BindableCollection<Zaposleni>(_dao.GetList());
        }

        public void IzmeniZaposlenog()
        {
            manager.ShowDialog(new IzmeniZaposlenogViewModel(SelectedZaposleni), null, null);
            // _dao.Update(_selectedAutomobil);
            Zaposleni = new BindableCollection<Zaposleni>(_dao.GetList());
        }
    }
}
