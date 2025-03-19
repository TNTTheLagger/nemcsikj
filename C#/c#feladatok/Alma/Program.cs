/*
 * Készítette a SharpDevelop.
 * Felhasználó: Kristonda
 * Dátum: 2013.12.16.
 * Idő: 10:11
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace Alma
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Írja be a szöveget:");
			string szov = Console.ReadLine();
			Console.WriteLine("A szövegben az alma szó előfordulása: {0}", CountText(szov,"alma").ToString());
			
			Console.ReadKey(true);
		}
		
		public static int CountText(string source, string text){
			string buffer = source;
			int counter = 0;
			bool van = true;
			while (van == true) {
				if (buffer.Contains(text) == true) {
					string csere = buffer.Substring(buffer.IndexOf(text)+3);
					buffer = csere;
					counter++;
				} else {
					van = false;
				}
			}
			return counter;
			
		}
	}
}