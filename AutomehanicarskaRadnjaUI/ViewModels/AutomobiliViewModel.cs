using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class AutomobiliViewModel : Conductor<object>
    {
        IWindowManager manager = new WindowManager();

        public AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO _dao;
        private BindableCollection<Automobil> _automobili;
        public Automobil _selectedAutomobil;

        public AutomobiliViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO();
            Automobili = new BindableCollection<Automobil>(_dao.GetList());
        }

        public Automobil SelectedAutomobil
        {
            get
            {
                return _selectedAutomobil;
            }
            set
            {
                _selectedAutomobil = value;
                NotifyOfPropertyChange(() => SelectedAutomobil);
            }
        }

        public BindableCollection<Automobil> Automobili
        {
            get
            {
                return _automobili;
            }
            set
            {
                _automobili = value;
                NotifyOfPropertyChange(() => Automobili);
            }
        }

        public void DodajAutomobil()
        {
            manager.ShowDialog(new DodajAutomobilViewModel(), null, null);
            Automobili = new BindableCollection<Automobil>(_dao.GetList());
        }

        public void ObrisiAutomobil()
        {
            _dao.Delete(_selectedAutomobil.AutomobilId);
            Automobili = new BindableCollection<Automobil>(_dao.GetList());
        }

        public void IzmeniAutomobil()
        {
            manager.ShowDialog(new IzmeniAutomobilViewModel(SelectedAutomobil), null, null);
            // _dao.Update(_selectedAutomobil);
            Automobili = new BindableCollection<Automobil>(_dao.GetList());
        }
    }
}
