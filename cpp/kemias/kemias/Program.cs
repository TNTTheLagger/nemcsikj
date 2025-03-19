using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace kemia
{
    public struct elem
    {
        public int rszam;
        public string nev;
        public string vegyj;
        public double tomeg;
        public double sugar;
        public double elektroneg;
        public double gyak;
        public int felfedev;
    }
    class Program
    {

        static elem[] elemek = new elem[110];
        static int elemdb;
        static void sorol(string s)
        {
            string t;
            int p = 0;
            s += "\t\t\t\t\t\t\t\t";
            t = "";
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            if (t.Length == 0)
                elemek[elemdb].rszam = 0;
            else
                elemek[elemdb].rszam = Convert.ToInt32(t);
            p++;
            elemek[elemdb].nev = "";
            while (s[p] != '\t')
            {
                elemek[elemdb].nev += s[p];

                p++;
            }
            p++;
            elemek[elemdb].vegyj = "";
            while (s[p] != '\t')
            {
                elemek[elemdb].vegyj += s[p];

                p++;
            }

            p++;
            t = "";
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            
            p++;
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            if (t.Length == 0)
                elemek[elemdb].tomeg = 0;
            else
                elemek[elemdb].tomeg = Convert.ToDouble(t);
            p++;

            t = "";
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            if (t.Length == 0)
                elemek[elemdb].sugar = 0;
            else
                elemek[elemdb].sugar = Convert.ToDouble(t);

            p++;
            t = "";
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            if (t.Length == 0)
                elemek[elemdb].elektroneg = 0;
            else
                elemek[elemdb].elektroneg = Convert.ToDouble(t);
            
            p++;
            t = "";
            while (s[p] != '\t')
            {
                t += s[p];
                p++;
            }
            if (t.Length < 1)
                t += "x";
            if ((t[0] > '9') || (t[0] < '0'))
            {
                elemek[elemdb].felfedev = 1700;
            }
            else
            {
                elemek[elemdb].felfedev = Convert.ToInt32(t);

            }
            elemdb++;

        }
        static void Main(string[] args)
        {
            string s;
            int ev;
            elemdb = 0;
            StreamReader f = File.OpenText("kemelem.txt");
            f.ReadLine();
            while (!f.EndOfStream)
            {
                s = f.ReadLine();
                sorol(s);
            }
            f.Close();
            ev = 2;
            Console.ReadKey();

        }
    }
}
