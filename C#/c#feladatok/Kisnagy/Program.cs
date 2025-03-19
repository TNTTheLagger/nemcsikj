/*
 * Készítette a SharpDevelop.
 * Felhasználó: Kristonda
 * Dátum: 2013.12.16.
 * Idő: 10:30
 * 
 * A sablon megváltoztatásához használja az Eszközök | Beállítások | Kódolás | Szabvány Fejlécek Szerkesztését.
 */
using System;

namespace Kisnagy
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Írja be a szöveget:");
			string szov = Console.ReadLine();
			Console.WriteLine();
			Console.WriteLine(InvertCase(szov));
			
			Console.ReadKey(true);
		}
		
		public static string InvertCase(string source) {
			char[] caseSwappedChars = new char[source.Length];
			for(int i = 0; i < caseSwappedChars.Length; i++) {
				char c = source[i];
				if(char.IsLetter(c)) {
					caseSwappedChars[i] =
						char.IsUpper(c) ? char.ToLower(c) : char.ToUpper(c);
				} else {
					caseSwappedChars[i] = c;
				}
			}
			return new string(caseSwappedChars);
		}
	}
}