using AutomehanicarskaRadnjaClassLibrary;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class IzmeniZaposlenogViewModel : Screen
    {
        private string _imeZaposlenog;
        private string _prezimeZaposlenog;
        private string _tipZaposlenog;
        private int _jmbgZaposlenog;
        public Zaposleni _selectedZaposleni;

        private AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO _dao;

        public IzmeniZaposlenogViewModel(Zaposleni selectedZaposleni)
        {
            _dao = new AutomehanicarskaRadnjaClassLibrary.DAO.ZaposleniDAO();
            SelectedZaposleni = selectedZaposleni;
            ImeZaposlenog = SelectedZaposleni.ImeZaposlenog;
            PrezimeZaposlenog = SelectedZaposleni.PrezimeZaposlenog;
            JMBGZaposlenog = SelectedZaposleni.JMBGZaposlenog;
            TipZaposlenog = SelectedZaposleni.TipZaposlenog;

            Console.WriteLine("Selected auto is " + SelectedZaposleni.ZaposleniId);
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

        public Zaposleni SelectedZaposleni
        {
            get { return _selectedZaposleni; }
            set { _selectedZaposleni = value; }
        }

        public void Izmeni()
        {

            SelectedZaposleni.ImeZaposlenog = ImeZaposlenog;
            SelectedZaposleni.PrezimeZaposlenog = PrezimeZaposlenog;
            SelectedZaposleni.JMBGZaposlenog = JMBGZaposlenog;
            SelectedZaposleni.TipZaposlenog = TipZaposlenog;
            
            _dao.Update(SelectedZaposleni);
        }
    }
}
