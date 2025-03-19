using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        
        public static void Main(string[] args)
        {
            Console.WriteLine("versenyzők száma");
            int N = Convert.ToInt32(Console.ReadLine().ToString());
            Console.WriteLine("bírók száma");
            int M = Convert.ToInt32(Console.ReadLine().ToString());
            int[,] eredmenyek = new int[N, M];
            Random rnd = new Random();

            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    eredmenyek[i, j] = rnd.Next(8, 10);
                }
            }
            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    Console.Write("{0}   ", eredmenyek[i, j]);
                }
                Console.WriteLine();
            }

            bool vaneLegjobb = true;
            int elozoLegJobb = -1;
            int elozoLegJobbTulaj = 0;
            Console.WriteLine("Kiesnek a következők:");
            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    if (eredmenyek[i, j] < 2)
                    {
                        Console.WriteLine("{0}", i+1);
                        break;
                    }
                }
            }
            for (int i = 0; i < M; i++)
            {
                elozoLegJobb = -1;
                for (int j = 0; j < N; j++)
                {
                    if (eredmenyek[j, i] > elozoLegJobb)
                    {
                        if (elozoLegJobbTulaj != j)
                        {
                            vaneLegjobb = false;
                            break;
                        }
                        elozoLegJobbTulaj = j;
                        elozoLegJobb = eredmenyek[j, i];

                    }
                }
                if (!vaneLegjobb)
                {
                    break;
                }
            }
            if (vaneLegjobb)
            {
                Console.WriteLine("Van legjobb(" + elozoLegJobbTulaj + ")");
            }
            else
            {
                Console.WriteLine("Nincs mindenkinél egyértelműen legjobb");
            }

            Console.ReadKey();

        }
    }
}
