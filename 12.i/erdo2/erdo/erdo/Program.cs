using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace erdo
{
    class Program
    {
        public static void Main(string[] args)
        {
            StreamReader sr = new StreamReader("erdo.txt");
            int n, m;
            string seged;
            seged = sr.ReadLine();

            n = Convert.ToInt32(seged.Split(' ')[0]);
            m = Convert.ToInt32(seged.Split(' ')[1]);

            int[,] erdo = new int[n, m];
            for (int i = 0; i < n; i++)
            {
                seged = sr.ReadLine();

                for (int j = 0; j < m; j++)
                {
                    erdo[i, j] = Convert.ToInt32(seged.Split(' ')[j]);
                }
            }

            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    Console.Write(erdo[i, j] + " ");
                }
                Console.WriteLine();
            }
            Console.ReadKey(true);
        }
    }
}