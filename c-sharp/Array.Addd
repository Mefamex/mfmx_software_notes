using System;

class Program
{

    /// <summary>
    /// Mevcut diziye yeni değerleri ekler.
    /// </summary>
    /// <typeparam name="T">Dizinin eleman türü.</typeparam>
    /// <param name="array">Eklenecek değerlerin bulunduğu dizi. Dizi referansı kullanılarak güncellenir.</param>
    /// <param name="values">Eklenecek değerler. Birden fazla değer eklenebilir.</param>
    private static void Addd<T>(ref T[] array, params T[] values)
    {
        if (array == null || array.Length == 0) {array = values;return;}
        T[] newArray = new T[array.Length + values.Length];
        Array.Copy(array, 0, newArray, 0, array.Length);
        Array.Copy(values, 0, newArray, array.Length, values.Length);
        array = newArray;
    }

    // kullanım ornegi
    static void Main()
    {
        // Farklı türlerde diziler oluşturma
        double[] myDoubleArray = []; // Başlangıçta null olan bir dizi
        string[] myStringArray = []; // Başlangıçta null olan bir dizi

        // tek tek diziye eleman ekliyebiliriz
        Addd(ref myDoubleArray, 6.6);
        Console.WriteLine("Double Dizi: " + string.Join(", ", myDoubleArray)); // Çıktı: Double Dizi: 6.6

        // liste içinde veya çoklu eleman ekliyebiliriz
        Addd(ref myDoubleArray, new[] {1.1, 2.2} , 3.3, 4.4);
        Console.WriteLine("Double Dizi: " + string.Join(", ", myDoubleArray)); // Çıktı: Double Dizi: 6.6,  1.1, 2.2, 3.3, 4.4

        // her tür değişkende uygulanabilirir dizisine değer ekle
        Addd(ref myStringArray, "Hello", "World");
        Console.WriteLine("String Dizi: " + string.Join(", ", myStringArray)); // Çıktı: String Dizi: Hello, World
    }
}
