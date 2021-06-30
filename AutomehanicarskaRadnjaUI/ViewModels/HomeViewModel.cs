using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaUI.ViewModels
{
    class HomeViewModel : Conductor<object>
    {
        public void OpenAutomobili()
        {
            ActivateItem(new AutomobiliViewModel());
        }

        public void OpenZaposleni()
        {
            ActivateItem(new ZaposleniViewModel());
        }

        public void OpenGaraze()
        {
            ActivateItem(new GarazeViewModel());
        }

        public void OpenTehnickiPregledi()
        {
            ActivateItem(new TehnickiPreglediViewModel());
        }

        /*public void OpenLinije()
        {
            ActivateItem(new LinijeViewModel());
        }

        public void OpenVozaci()
        {
            ActivateItem(new VozaciViewModel());
        }*/
    }
}
