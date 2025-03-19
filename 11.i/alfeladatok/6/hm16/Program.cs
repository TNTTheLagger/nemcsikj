/*
 * Készítette a SharpDevelop.
 * Felhasználó: Harangozom
 * Dátum: 2013.12.09.
 * Idő: 10:38
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace hm16
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Írja be az életkorát: ");
			int kor = Convert.ToInt32(Console.ReadLine());
			if (kor <= 6) {
				Console.WriteLine("Gyerek");
			} else if ( 7 <= kor && kor <= 18) {
				Console.WriteLine("Iskolás");
			} else if ( 19 <= kor && kor <= 60) {
				Console.WriteLine("Dolgozó");
			} else
				Console.WriteLine("Nyugdíjas");
			
			Console.ReadKey(true);
		}
	}
}