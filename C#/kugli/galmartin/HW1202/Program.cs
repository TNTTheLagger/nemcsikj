using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW1202
{
    class Verseny
    {
        public int[,] pont;
        public int n, m;
        public Verseny(int n, int m)
        {
            this.n = n;
            this.m = m;
            pont = new int[n, m];
            Random rnd = new Random();
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    pont[i, j] = rnd.Next(0, 10);
                }
            }
        }
    }

    class Program
    {
        static void Egy(Verseny verseny)
        {
            Console.Write("Kieső versenyzők: ");
            for (int i = 0; i < verseny.n; i++)
            {
                for (int j = 0; j < verseny.m; j++)
                {
                    if (verseny.pont[i, j] < 2)
                    {
                        Console.Write(i + 1);
                        Console.Write(" ");
                        break;
                    }
                }
            }
            Console.WriteLine();
        }

        static List<int> kiesett = new List<int>();

        static void Ot(Verseny verseny)
        {
            for (int i = 0; i < verseny.n; i++)
            {
                for (int j = 0; j < verseny.m; j++)
                {
                    if (verseny.pont[i, j] >= 2)
                    {
                        break;
                    }
                    if (j == verseny.m - 1)
                    {
                        kiesett.Add(i);
                    }
                }
            }
            Console.Write("Minden bírónál kiesett: ");
            foreach (int k in kiesett)
            {
                Console.Write(k + " ");
            }
            Console.WriteLine();
        }

        static List<int> gyoztes = new List<int>();

        static void TizenOt(Verseny verseny, int biro)
        {
            if (biro > verseny.m)
            {
                Console.WriteLine("Hiba! Bíró száma maxium: " + verseny.m);
                return;
            }
            int max = 0;
            for (int i = 0; i < verseny.n; i++)
            {
                if (verseny.pont[i, biro - 1] > max)
                {
                    max = verseny.pont[i, biro - 1];
                }
            }
            for (int i = 0; i < verseny.n; i++)
            {
                if (verseny.pont[i, biro - 1] == max)
                {
                    gyoztes.Add(i + 1);
                }
            }
            Console.Write(biro + ". számú bírónál győztes: ");
            foreach (int gy in gyoztes)
            {
                Console.Write(gy + " ");
            }
            Console.WriteLine();
        }

        static void TizenHat(Verseny verseny, List<int> gyoztes)
        {
            int[] ossz = new int[gyoztes.Count];
            for (int gy = 0; gy < gyoztes.Count; gy++)
            {
                for (int i = 0; i < verseny.m; i++)
                {
                    ossz[gy] += verseny.pont[gyoztes[gy], i];
                }
            }
            for (int i = 0; i < gyoztes.Count; i++)
            {
                Console.Write(gyoztes[i] + ". összpontszáma: " + ossz[i]);
                Console.WriteLine();
            }
        }

        static void HuszonHarom(Verseny verseny)
        {
            int[] pontSum = new int[verseny.n];
            for (int i = 0; i < verseny.n; i++)
            {
                for (int j = 0; j < verseny.m; j++)
                {
                    pontSum[i] += verseny.pont[i, j];
                }
            }
            Console.WriteLine("Holtverseny:");
            for (int i = 0; i < pontSum.Length; i++)
            {
                for (int j = i + 1; j < pontSum.Length; j++)
                {
                    if (pontSum[i] == pontSum[j])
                    {
                        Console.WriteLine("{0} és {1} között", i + 1, j + 1);
                    }
                }
            }
        }

        static void HuszonNegy(Verseny verseny, int p)
        {
            int[] pontSum = new int[verseny.n];
            for (int i = 0; i < verseny.n; i++)
            {
                for (int j = 0; j < verseny.m; j++)
                {
                    pontSum[i] += verseny.pont[i, j];
                }
            }
            Console.Write(p + " pontja volt: ");
            for (int i = 0; i < pontSum.Length; i++)
            {
                if (pontSum[i] == p)
                {
                    Console.Write("{0} ", i + 1);
                }
            }
            Console.WriteLine();
        }
        
        static void Main(string[] args)
        {
            Verseny verseny = new Verseny(6, 4);
            for (int i = 0; i < verseny.n; i++)
            {
                for (int j = 0; j < verseny.m; j++)
                {
                    Console.Write(verseny.pont[i, j] + " ");
                }
                Console.WriteLine();
            }
            //Egy(verseny);
            //Ot(verseny);
            int biro = 0;
            Console.WriteLine("bíró száma: ");
            biro = Convert.ToInt32(Console.ReadLine());
            TizenOt(verseny, biro);
            TizenHat(verseny, gyoztes);
            //HuszonHarom(verseny);
            //HuszonNegy(verseny, 10);
            Console.ReadKey();
        }
    }
}
