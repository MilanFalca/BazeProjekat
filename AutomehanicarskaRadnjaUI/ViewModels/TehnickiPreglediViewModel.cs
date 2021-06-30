using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class TehnickiPreglediViewModel : Conductor<object>
    {
        IWindowManager manager = new WindowManager();

        public AutomehanicarskaRadnjaClassLibrary.DAO.TehnickiPregledDAO _dao;
        private BindableCollection<TehnickiPregled> _garaze;
        public TehnickiPregled _selectedTehnickiPregled;

        public TehnickiPreglediViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.TehnickiPregledDAO();
            TehnickiPregledi = new BindableCollection<TehnickiPregled>(_dao.GetList());
        }

        public TehnickiPregled SelectedTehnickiPregled
        {
            get
            {
                return _selectedTehnickiPregled;
            }
            set
            {
                _selectedTehnickiPregled = value;
                NotifyOfPropertyChange(() => SelectedTehnickiPregled);
            }
        }

        public BindableCollection<TehnickiPregled> TehnickiPregledi
        {
            get
            {
                return _garaze;
            }
            set
            {
                _garaze = value;
                NotifyOfPropertyChange(() => TehnickiPregledi);
            }
        }

        public void DodajTehnickiPregled()
        {
            manager.ShowDialog(new DodajTehnickiPregledViewModel(), null, null);
            TehnickiPregledi = new BindableCollection<TehnickiPregled>(_dao.GetList());
        }

        public void ObrisiTehnickiPregled()
        {
            _dao.Delete(_selectedTehnickiPregled.TehnickiPregledId);
            TehnickiPregledi = new BindableCollection<TehnickiPregled>(_dao.GetList());
        }

        public void IzmeniTehnickiPregled()
        {
            manager.ShowDialog(new IzmeniTehnickiPregledViewModel(SelectedTehnickiPregled), null, null);
            // _dao.Update(_selectedTehnickiPregled);
            TehnickiPregledi = new BindableCollection<TehnickiPregled>(_dao.GetList());
        }
    }
}
