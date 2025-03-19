using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace tk
{
    class Telek
    {
        int hazszam;

        public int Hazszam
        {
            get { return hazszam; }
            set { hazszam = value; }
        }
        int szelesseg;

        public int Szelesseg
        {
            get { return szelesseg; }
            set { szelesseg = value; }
        }
        int magassag;

        public int Magassag
        {
            get { return magassag; }
            set { magassag = value; }
        }
        int jobbsarok;

        public int Jobbsarok
        {
            get { return jobbsarok; }
            set { jobbsarok = value; }
        }
        int balsarok;

        public int Balsarok
        {
            get { return balsarok; }
            set { balsarok = value; }
        }
        public int aktTerulet()
        {
            return this.Magassag * this.Szelesseg;
        }
    }

    class Program
    {
        static SortedList<int, Telek> telkek;
        static SortedList<int, Telek> joletSor;
        static SortedList<int, Telek> gazdaSor;
        static int telekSzama;
        const int teljesMagassag = 80;
        const int maxSzelesseg = 40;
        const int hid = 10;

        static void Main(string[] args)
        {
            Console.WriteLine("Program telek");
            telkek = new SortedList<int, Telek>();
            joletSor = new SortedList<int, Telek>();
            gazdaSor = new SortedList<int, Telek>();
            
            F1();
            F2();
            F3();
            F4();
            F5();
            F6();
            F7();


            Console.ReadLine();
        }

        private static void F7()
        {
            Console.WriteLine("7. feladat megoldása");

            foreach (Telek aktTelek in joletSor.Values)
            {
                aktTelek.Magassag = teljesMagassag - hid - SzomszedMagassag(aktTelek);
            }

            StreamWriter sw = new StreamWriter("joletsor.csv", false, Encoding.Default);
            foreach (Telek alkTelek in joletSor.Values)
            {
                sw.WriteLine("{0};{1};{2}", alkTelek.Hazszam, alkTelek.Szelesseg,
                    alkTelek.Magassag);



                  
                   
            }
            sw.Close();
        }

        private static int SzomszedMagassag(Telek aktTelek)
        {
            List<Telek> szomszedok = new List<Telek>();
            int i=0;
            while (!(aktTelek.Jobbsarok >= gazdaSor.Values[i].Jobbsarok && aktTelek.Jobbsarok
                <= gazdaSor.Values[i].Balsarok))
            {
                i++;
            }
            int j = i + 1;
            while (j < gazdaSor.Count && aktTelek.Balsarok >= gazdaSor.Values[j].Jobbsarok)
            {
                j++;
            }
            for (int k = i; k < j; k++)
            {
                szomszedok.Add(gazdaSor.Values[k];
            }
            int max= szomszedok[0].Magassag;
            foreach( Telek _Telek in szomszedok)
            {
                if (max < _Telek.Magassag)
                {
                    max= _Telek.Magassag;
                }
            }
            return max;

        }

        private static void F6()
        {
            Tavolsag();
            int utolsoHaz= joletSor.Count;
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("A {0} számú telek elejétől mért távolsága: {1} m", joletSor.Values[utolsoHaz - 1 - i].Hazszam,
                    joletSor.Values[utolsoHaz - 1 - i].Jobbsarok);
            }
        }

        private static void Tavolsag()
        {
            int gazdaSorTav = 0;
            int joletSorTav = 0;
            foreach (Telek aktTelek in gazdaSor.Values)
            {
                aktTelek.Jobbsarok = gazdaSorTav;
                gazdaSorTav += aktTelek.Szelesseg;
                aktTelek.Balsarok = gazdaSorTav;
            }
            foreach (Telek aktTelek in joletSor.Values)
            {
                aktTelek.Jobbsarok = joletSorTav;
                joletSorTav += aktTelek.Szelesseg;
                aktTelek.Balsarok = joletSorTav;
            }

        }

        private static void F5()
        {
            int befolytAdo = 0;
            foreach (Telek aktTelek in gazdaSor.Values)
            {
                befolytAdo += Ado(aktTelek);
            }
            Console.WriteLine("A gazdasoron befolyt ado mértéke: {0:N0} fabatka", befolytAdo);
        }

        private static int Ado(Telek aktTelek)
        {
            const int adoKulcs1 = 51;
            const int adoKulcs2 = 39;
            const int adoAltalany = 200;
            int ados = 0;
            decimal kedvezmeny = 0;

            if (aktTelek.Szelesseg <= 15 || aktTelek.Magassag <= 25)
            {
                kedvezmeny = 0.2M;
            }
            if (aktTelek.aktTerulet() <= 700)
            {
                ados = aktTelek.aktTerulet() * adoKulcs1;
            }
            if (aktTelek.aktTerulet() > 700 && aktTelek.aktTerulet() <= 1000)
            {
                ados = 700 * adoKulcs1 + (aktTelek.aktTerulet() - 700) * adoKulcs2;
            }
            if (aktTelek.aktTerulet() > 1000)
            {
                ados = 700 * adoKulcs1 + 300 * adoKulcs2 + adoAltalany;
            }
            decimal kedvAdo = Math.Round((ados + ados * kedvezmeny) / 100) * 100;
                 


            return (int) kedvAdo;

        }

        private static void F4()
        {
            Console.WriteLine("Negyedik feladat");
            int minTerulet = telkek.Values[0].aktTerulet();
            int maxTerulet = telkek.Values[0].aktTerulet();
            Telek minTelek = new Telek();
            Telek maxTelek = new Telek();
            minTelek = telkek.Values[0];
            maxTelek = telkek.Values[0];

            foreach (Telek aktTelek in gazdaSor.Values)
            {
                if (minTerulet > aktTelek.aktTerulet())
                {
                    minTerulet = aktTelek.aktTerulet();
                    minTelek = aktTelek;
                } 
                if (maxTerulet < aktTelek.aktTerulet())
                {
                    maxTerulet = aktTelek.aktTerulet();
                    maxTelek = aktTelek;
                }
              }

            int Tavolsag = Math.Abs(maxTelek.Hazszam - minTelek.Hazszam) / 2 - 1;
            Console.WriteLine("A legkisebb és a legnagyobb területű telek közötti házak szaáma: {0} ", Tavolsag);
            Console.WriteLine("A legkisebb telek {0} számú, területe {1} négyzetméter", minTelek.Hazszam, minTelek.aktTerulet());
            Console.WriteLine("A legnagyobb telek {0} számú, területe {1} négyzetméter", maxTelek.Hazszam, maxTelek.aktTerulet());
           


        }

        private static void F3()
        {
            int darab = 0;
            foreach (Telek aktTelek in joletSor.Values)
            {
                if (aktTelek.Szelesseg <= 20)
                {
                    darab++;
                }
            }
            Console.WriteLine("a telekszám: {0} ", darab);
        }

        private static void F2()
        {
            Console.WriteLine("Második feladat");
            int osszeg = 0;
            foreach (Telek _tetel in telkek.Values)
            {
                osszeg += _tetel.Szelesseg;
            }
            osszeg += teljesMagassag * 2;
            Console.WriteLine("A két utca körbejárva: {0} ", osszeg);
        }

        private static void F1()
        {
            StreamReader sr = new StreamReader(@"telkek.txt", Encoding.Default);
            telekSzama = Convert.ToInt16(sr.ReadLine());

            while (!sr.EndOfStream)
            {
                string[] sor = sr.ReadLine().Split(' ');
                Telek aktTelek = new Telek();
                aktTelek.Hazszam = Convert.ToInt16(sor[0]);
                aktTelek.Szelesseg = Convert.ToInt16(sor[1]);
                aktTelek.Magassag = Convert.ToInt16(sor[2]);
                telkek.Add(aktTelek.Hazszam, aktTelek);
                Console.WriteLine("a sorok {0}, {1}, {2}, {3} ", sor[1], aktTelek.Hazszam, aktTelek.Szelesseg, aktTelek.Magassag);

            }
            sr.Close();

            foreach (Telek aktTelek in telkek.Values)
            {
                if (aktTelek.Hazszam % 2 == 0)
                {
                    joletSor.Add(aktTelek.Hazszam, aktTelek);
                }
                else
                {
                    gazdaSor.Add(aktTelek.Hazszam, aktTelek);
                }
            }

        }
    }
}
