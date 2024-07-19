// array.cs
using System;

class Program {
    static void Main() {
        int[] arr = { 1, 2, 3, 4, 5 };
        Console.Write("Array elements are: ");
        foreach (int i in arr) {
            Console.Write(i + " ");
        }
        Console.WriteLine();
    }
}
