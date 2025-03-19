using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Random rnd=new Random();
            int[,] matrix = new int[6, 4];
            int[] tomb = new int[6];
            int[] osszeg = new int[6];
            int a = 0;
            int kerdes = 0;
            int szamlalo = 0;
            int b = 0;
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    matrix[i, j] =rnd.Next(0,2);
                }
            }
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    Console.Write("  {0}  ", matrix[i, j]);
                }
                Console.WriteLine();
            }
            /*for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    Console.WriteLine("[{0},{1}]:{2}", i, j, matrix[i, j]);
                }
            }*/
                //Console.ReadKey();
            Console.WriteLine();
            Console.WriteLine("3.feladat:Van-e olyan bíró, aki mindenkinek ugyanazt a pontszámot adta?");
            for (int i = 0; i < 4; i++)
            {
                kerdes = matrix[i, 0];
                for (int j = 0; j < 6; j++)
                {
                    tomb[j] = matrix[j, i];
                }
                for (int k = 0; k < 6; k++)
                {
                    if (kerdes != tomb[k])
                    {
                        break;
                    }
                    else szamlalo++;
                }
                if (szamlalo == 6)
                {
                    Console.WriteLine("{0}.bíró egyenlő pontszámokat adott.", i + 1);
                }
                else Console.WriteLine("Nem történt ilyen {0}.bíró esetében.", i + 1);
                szamlalo = 0;
            }
            Console.WriteLine();
            Console.WriteLine("4.feladat:Volt-e holtveseny?");
            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    a += matrix[i, j];
                }
                osszeg[i] = a;
                a = 0;
            }
            for (int i = 0; i < 6; i++)
            {
                Console.WriteLine("{0}.versenyző pontszáma: {1}", i + 1, osszeg[i]);
            }
            for (int i = 0; i < 6; i++)
            {
                for (int j = i+1; j < 6; j++)
                {
                    if (osszeg[i] == osszeg[j])
                    {
                        Console.WriteLine("A(z) {0}.és a(z) {1}. versenyző közt volt holtverseny.", i+1, j+1);
                        b++;
                    }
                }
            }
            if (b == 0)
            {
                Console.WriteLine("Nem volt holtverseny.");
            }
                Console.ReadKey();
        }
    }
}
