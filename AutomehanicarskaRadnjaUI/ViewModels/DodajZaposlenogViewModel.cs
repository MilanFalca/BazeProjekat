using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class DodajZaposlenogViewModel : Screen
    {
        private string _imeZaposlenog;
        private string _prezimeZaposlenog;
        private string _tipZaposlenog;
        private int _jmbgZaposlenog;

        private AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO _dao;

        public DodajZaposlenogViewModel()
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO();
        }
        
        public string ImeZaposlenog
        {
            get { return _imeZaposlenog; }
            set
            {
                _imeZaposlenog = value;
                NotifyOfPropertyChange(() => _imeZaposlenog);
            }
        }

        public string PrezimeZaposlenog
        {
            get { return _prezimeZaposlenog; }
            set
            {
                _prezimeZaposlenog = value;
                NotifyOfPropertyChange(() => _prezimeZaposlenog);
            }
        }

        public string TipZaposlenog
        {
            get { return _tipZaposlenog; }
            set
            {
                _tipZaposlenog = value;
                NotifyOfPropertyChange(() => _tipZaposlenog);
            }
        }

        public int JMBGZaposlenog
        {
            get { return _jmbgZaposlenog; }
            set
            {
                _jmbgZaposlenog = value;
                NotifyOfPropertyChange(() => _jmbgZaposlenog);
            }
        }

        public void Dodaj()
        {
            var automobil = new AutomehanicarskaRadnjaClassLibrary.Zaposleni
            {
                ImeZaposlenog = ImeZaposlenog,
                PrezimeZaposlenog = PrezimeZaposlenog,
                JMBGZaposlenog = JMBGZaposlenog,
                TipZaposlenog = TipZaposlenog
            };
            _dao.Insert(automobil);
        }
    }
}
