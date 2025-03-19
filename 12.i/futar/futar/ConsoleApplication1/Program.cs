using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace ConsoleApplication1
{
    class Program
    {
        struct EgyUt
        {
            public int nap, sorszam, ut, fizetes;
        }
        static EgyUt[] utak = new EgyUt[300];
        static int n = 0;
        static int[] db = new int[8];
        static int[] napkm = new int[8];


        static void Main(string[] args)
        {
            Feladat1();
            Feladat2();
            Feladat3();
            Feladat4();
            Feladat5();
            Feladat6();
            Feladat7();
            Feladat8();
            Feladat9();
        }

        private static void Feladat9()
        {
            int ossz = 0;
            for (int i = 0; i < n; i++)
            {
                ossz += utak[i].fizetes;
            }
            Console.WriteLine("A futár {0}. Ft-ot kapott", ossz);
            Console.WriteLine("Add meg az út hosszát");
            km = Convert.ToInt32(Console.ReadLine());
        }

        private static void Feladat8()
        {
            StreamWriter iro = new StreamWriter("dijazas.txt");
            for (int i = 0; i < n; i++)
            {
                utak[i].fizetes = dij(utak[i].ut);
                iro.WriteLine("{0}. nap {1}. út: {2} Ft", utak[i].nap, utak[i].sorszam, utak[i].fizetes);
            }
            iro.Close();
        }

        private static int dij(int p)
        {
            int i = 1;
            return utak[i].ut;
        }

        private static void Feladat7()
        {
            int km = 0;
            int Ft = 500;
            Console.WriteLine("Add meg az út hosszát");
            km = Convert.ToInt32(Console.ReadLine());
            if (km >= 3 && km <= 5) Ft = 700;
            if (km >= 6 && km <= 10) Ft = 900;
            if (km >= 11 && km <= 20) Ft = 1400;
            if (km >= 21 && km <= 31) Ft = 2000;
            Console.WriteLine("Az út dijazása {0} Ft lesz", Ft);
        }

        private static void Feladat6()
        {
            for (int i = 0; i < n; i++)
            {
                napkm[utak[i].nap] += utak[i].ut;
            }
            for (int i = 1; i < 8; i++)
            {
                Console.WriteLine("A futár {0}. nap : {1} km tett meg", i, napkm[i]);
            }
        }

        private static void Feladat5()
        {
            int max = db[1];
            int maxh = 1;
            for (int i = 2; i < 8; i++)
            {
                if (db[i] > max)
                {
                    max = db[i];
                    maxh = i;
                }
            }
            Console.WriteLine("A legtöbb fuvar a {0}. napon volt", maxh);
        }

        private static void Feladat4()
        {
            for (int i = 0; i < 8; i++)
            {
                if (db[i] == 0) Console.Write("A futár nem dolgozott {0} napon", i);
            }
        }

        private static void Feladat3()
        {
            int i = 7;
            int km = 0;
            while (db[i] == 0) i--;
            for (int j = 0; j < n; j++)
            {
                if (utak[j].nap == i && utak[j].sorszam == db[i]) km = utak[j].ut;
            }
            Console.WriteLine("A futár utolsú fuvarja {0} km hosszú volt", km);
        }

        private static void Feladat2()
        {
            int i=0;
            int km=0;
            while (db[i] == 0) i++;
            for (int j=0; j < n; j++)
            {
                if (utak[j].nap == i && utak[j].sorszam == 1) km = utak[j].ut;
            }
            Console.WriteLine("A futar első utja {0} km hosszú volt.", km);
        }

        private static void Feladat1()
        {
            StreamReader olvaso = new StreamReader("tavok.txt");
            string[] egysor = new string[3];

            while (olvaso.Peek() > -1)
            {
                egysor = olvaso.ReadLine().Split(' ');
                utak[n].nap = Convert.ToInt32(egysor[0]);
                utak[n].sorszam = Convert.ToInt32(egysor[1]);
                utak[n].ut = Convert.ToInt32(egysor[2]);
                n++;
            }
            for (int i = 0; i < n; i++)
            {
                db[utak[i].nap]++;
            }


        }
    }
}
