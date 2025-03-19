using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hf
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] versenyzok = new int[6, 6];
            int min = 40;
            int minindex = 0;
            Random rnd = new Random();
            for (int i = 0; i < 6; i++)
            {
                versenyzok[i, 0] = rnd.Next(0, 9);
                versenyzok[i, 1] = rnd.Next(0, 9);
                versenyzok[i, 2] = rnd.Next(0, 9);
                versenyzok[i, 3] = rnd.Next(0, 9);
                versenyzok[i, 4] = versenyzok[i, 0] + versenyzok[i, 1] + versenyzok[i, 2] + versenyzok[i, 3];
                if (versenyzok[i, 0] > 1 && versenyzok[i, 1] > 1 && versenyzok[i, 2] > 1 && versenyzok[i, 3] > 1)
                {
                    versenyzok[i, 5] = 1;
                }
                else versenyzok[i, 5] = 0;
            }
            for (int i = 0; i < 6; i++)
            {
                if (versenyzok[i, 5] == 1)
                {
                    if (versenyzok[i, 4] < min)
                    {
                        min = versenyzok[i, 4];
                        minindex = i;
                    }
                }
            }

            Console.WriteLine(minindex + 1);


            for (int i = 0; i < 6; i++)
            {
                for (int j = 0; j < 6; j++)
                {
                    Console.Write("{0}\t", versenyzok[i, j]);
                }
                Console.WriteLine("");
            }
            bool vane = false;
            for (int i = 0; i < 6; i++)
            {
                if (versenyzok[i, 5] == 0)
                {
                    for (int j = 0; j < 4; j++)
                    {
                        if (versenyzok[i, j] == 9)
                        {
                            vane = true;

                        }
                    }
                }
            }
            if (vane == true)
            {
                Console.WriteLine("igen");
            }
            else
            {
                Console.WriteLine("nem");
            }

            Console.ReadKey();


        }
    }
}
