/*
 * Készítette a SharpDevelop.
 * Felhasználó: Kristonda
 * Dátum: 2013.12.09.
 * Idő: 10:24
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace feladat17
{
	class Program
	{
		static void Main(string[] args)
		{
			Console.WriteLine("Oldalak hossza: ");
            double a = Convert.ToDouble(Console.ReadLine());
			double b = Convert.ToDouble(Console.ReadLine());
			double c = Convert.ToDouble(Console.ReadLine());
			Console.WriteLine("A háromszög területe: {0}",calcArea(a,b,c));
			Console.ReadKey(true);
		}

		public static double calcArea(double a, double b, double c)
		{
			double s = (a+b+c)/2;
			double T = Math.Sqrt(s*(s-a)*(s-b)*(s-c));
			return T;
		}
	}
}