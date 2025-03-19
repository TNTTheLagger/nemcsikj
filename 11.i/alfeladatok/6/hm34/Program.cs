/*
 * Készítette a SharpDevelop.
 * Felhasználó: Harangozom
 * Dátum: 2013.12.09.
 * Idő: 10:52
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace hm34
{
	class Program
	{
		public static void Main(string[] args)
		{
			int[] magas = new int[11];
			Random rnd = new Random();
			bool van = false;
			for (int i = 0; i < magas.Length ; i++ ) {
				magas[i] = rnd.Next(180, 230);
			}
			
			foreach(int szam in magas)
				if (szam > 210 ) {
				van = true;
			}
			if (van== true) {
				Console.WriteLine("Van 210 centinél magasabb tag");
			} else {
				Console.WriteLine("Nincs 210 centinél magasabb tag");
			}
			
			Console.ReadKey(true);
		}
	}
}