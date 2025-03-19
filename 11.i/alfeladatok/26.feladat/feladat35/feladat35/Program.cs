/*
 * Készítette a SharpDevelop.
 * Felhasználó: Kristonda
 * Dátum: 2013.12.09.
 * Idő: 10:53
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace feladat35
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Írj be egy számot:");
			int szam = Convert.ToInt32(Console.ReadLine());
			bool van = false;
			for (int i = 2; i < szam ; i++ ) {
				if ( szam % i == 0) {
					van = true;
				}
			}
			
			if (van == true) {
				Console.WriteLine("Van osztója");
			} else {
				Console.WriteLine("Nincs osztója");
			}
			
			Console.ReadKey(true);
		}
	}
}