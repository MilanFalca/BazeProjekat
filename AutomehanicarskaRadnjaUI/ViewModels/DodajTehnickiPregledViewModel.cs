using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class DodajTehnickiPregledViewModel : Screen
    {
        private DateTime _datumIVreme;
        private string _opis;
        private Status _status;
        private Zaposleni _zaposleni;
        private Automobil _automobil;
        private Garaza _garaza;

        public IReadOnlyList<Status> Status { get; }
        public IReadOnlyList<Zaposleni> Zaposleni { get; }
        public IReadOnlyList<Garaza> Garaza { get; }
        public IReadOnlyList<Automobil> Automobil { get; }

        private AutomehanicarskaRadnjaClassLibrary.DAO.TehnickiPregledDAO _dao;
        private AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO _daoZaposleni;
        private AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO _daoAutomobil;
        private AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO _daoGaraza;

        public DodajTehnickiPregledViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.TehnickiPregledDAO();
            _daoZaposleni = new AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO();
            _daoAutomobil = new AutomehanicarskaRadnjaClassLibrary.DAO.AutomobilDAO();
            _daoGaraza = new AutomehanicarskaRadnjaClassLibrary.DAO.GarazaDAO();


            Status = Enum.GetValues(typeof(Status)).Cast<Status>().ToList();
            Zaposleni = _daoZaposleni.GetList();
            Automobil = _daoAutomobil.GetList();
            Garaza = _daoGaraza.GetList();
        }

        public DateTime DatumIVreme
        {
            get { return _datumIVreme; }
            set
            {
                _datumIVreme = value;
                NotifyOfPropertyChange(() => _datumIVreme);
            }
        }

        public Status SelectedStatus
        {
            get { return _status; }
            set
            {
                _status = value;
                NotifyOfPropertyChange(() => _status);
            }
        }

        public Zaposleni SelectedZaposleni
        {
            get { return _zaposleni; }
            set
            {
                _zaposleni = value;
                NotifyOfPropertyChange(() => _zaposleni);
            }
        }

        public Garaza SelectedGaraza
        {
            get { return _garaza; }
            set
            {
                _garaza = value;
                NotifyOfPropertyChange(() => _garaza);
            }
        }

        public Automobil SelectedAutomobil
        {
            get { return _automobil; }
            set
            {
                _automobil = value;
                NotifyOfPropertyChange(() => _automobil);
            }
        }

        public string Opis
        {
            get { return _opis; }
            set
            {
                _opis = value;
                NotifyOfPropertyChange(() => _opis);
            }
        }

        public void Dodaj()
        {
            var tehnickiPregled = new AutomehanicarskaRadnjaClassLibrary.TehnickiPregled
            {
                DatumIVreme = DatumIVreme,
                Opis = Opis,
                AutomobilAutomobilId = SelectedAutomobil.AutomobilId,
                GarazaGarazaId = SelectedGaraza.GarazaId,
                ZaposleniZaposleniId = SelectedZaposleni.ZaposleniId,
                Status = SelectedStatus
            };
            _dao.Insert(tehnickiPregled);
        }
        
    }
}
