// coding="utf-8"
/* 
Proje Adi       : Async Trigger Class Implementation
Yazar           : MEFAMEX (info@mefamex.com) (https://mefamex.com)
Proje Versiyon  : 1.0.0 
Tarih           : 2025-02-05 
Telif Hakki     : MIT 
Durum           : Gelistirme
Lisans          : MIT Lisansi

Aciklama:
- Bu koddaki sınıf Asenkron tetikleme mekanizması için Delegate ve Async/await kullanarak Thread-safe olan bir implementasyondur.

Ozellikler:
    - Asenkron çalışma desteği
    - Delegate sayesinde özelleştirilebilir tetikleme fonksiyonları
    - Thread-safe operasyonlar
    - Default ve custom fonksiyon desteği

Moduller:
- AsyncTriggerClass: Ana tetikleme mekanizması modülü

Siniflar:
- AsyncTriggerClass: Asenkron tetikleme fonksiyonlarını içeren ana sınıf
- Program: Test ve örnek kullanım sınıfı

Fonksiyonlar:
- Func1(): Senkron tetikleme fonksiyonu
- Func2(): Asenkron çalışabilen tetikleme fonksiyonu
- TriggerFunc2Parallel(): Paralel tetikleme yapan yardımcı fonksiyon

Kullanim:
- Özelleştir : .Func1, .Func2, ContinuousOperationFunction
AsyncTriggerClass instance = new AsyncTriggerClass();
instance.Func1 = () => CustomOperation();
instance.Func2 = () => AsyncOperation();

Gereksinimler:
- .NET 7.3 veya üstü
- Bagimliliklar:
    - System.Threading.Tasks
*/


using System;

class Program
{
    public static void Main(string[] args)
    {
        AsyncTriggerClass sample = new AsyncTriggerClass();

        // Default methodları çalıştır
        sample.Func1(); // Debug.WriteLine("Default Func1 executed at: " + DateTime.UtcNow.Ticks);
        sample.Func2(); // Debug.WriteLine("Default Func2 executed at: " + DateTime.UtcNow.Ticks);

        // Custom methodları tanımla
        sample.Func1 = () => Console.WriteLine("Custom Func1 executed");
        sample.Func2 = () => Console.WriteLine("Custom Func2 executed");

        // Custom methodları çalıştır
        Console.WriteLine("call custom method");
        sample.Func1(); // Console.WriteLine("Custom Func1 executed");
        sample.Func2(); // Console.WriteLine("Custom Func2 executed");

        // Async/await işlemleriyle özel Func2 çalıştır
        RunParallelFunc(sample);
        Console.WriteLine("call samples special func from class' sample");
        sample.ContinuousOperationFunction();
    }

    
    private static async Task RunParallelFunc(AsyncTriggerClass F) => await Task.Run(() => F.Func2());
}



class AsyncTriggerClass
{
    public AsyncTriggerClass()
    {
        Func1 = DefaultFunc1;
        Func2 = DefaultFunc2;
    }

    public void ContinuousOperationFunction()
    {
        Func1();
        Task.Run(async () => { await TriggerFunc2Parallel(); });
    }


    public delegate void Func1Delegate();
    public delegate void Func2Delegate();
    public Func1Delegate Func1 { get; set; }
    public Func2Delegate Func2 { get; set; }
    private void DefaultFunc1() => Debug.WriteLine($"Default Func1 executed at: {DateTime.UtcNow.Ticks}");
    private void DefaultFunc2() => Debug.WriteLine($"Default Func2 executed at: {DateTime.UtcNow.Ticks}");
    private async Task TriggerFunc2Parallel()
    {
        try { await Task.Yield(); Func2(); }
        catch (Exception ex) { Debug.WriteLine($"Func2 parallel execution failed: {ex.Message}"); }
    }
}
