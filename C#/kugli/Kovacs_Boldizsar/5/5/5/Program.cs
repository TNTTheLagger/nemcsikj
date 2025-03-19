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
            Console.Write("5. Minden bírónál kiesett: ");
            foreach (int k in kiesett)
            {
                Console.Write(k + " ");
            }
            Console.WriteLine();
        }


        static void Main(string[] args)
        {
            Verseny verseny = new Verseny(6, 4);
            Ot(verseny);
            Console.ReadKey();
        }
    }
}
