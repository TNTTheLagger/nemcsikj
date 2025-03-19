using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace matrix
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] matrix = new int[3, 3];
            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                for (int j = 0; j < matrix.GetLength(1); j++)
                {
                    matrix[i, j] = Convert.ToInt32(Console.ReadLine());
                }
            }
            Console.WriteLine();

            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                for (int j = 0; j < matrix.GetLength(1); j++)
                {
                    Console.Write(matrix[i, j] + " ");
                    if (j == matrix.GetLength(1) - 1)
                    {
                        Console.Write("\n");
                    }
                }
            }

            int[] temp = new int[matrix.GetLength(1)];
            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                temp[i] = matrix[0, i];
                matrix[0, i] = matrix[1, i];
                matrix[1, i] = temp[i];
            }
            Console.WriteLine();

            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                for (int j = 0; j < matrix.GetLength(1); j++)
                {
                    Console.Write(matrix[i, j] + " ");
                    if (j == matrix.GetLength(1) - 1)
                    {
                        Console.Write("\n");
                    }
                }
            }

            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                temp[i] = matrix[i, 0];
                matrix[i, 0] = matrix[i, 1];
                matrix[i, 1] = temp[i];
            }
            Console.WriteLine();

            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                for (int j = 0; j < matrix.GetLength(1); j++)
                {
                    Console.Write(matrix[i, j] + " ");
                    if (j == matrix.GetLength(1) - 1)
                    {
                        Console.Write("\n");
                    }
                }
            }

            Console.ReadKey();
        }
    }
}
