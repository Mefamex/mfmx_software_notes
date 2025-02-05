<h1 align="center" id="c-sharp"> C# NOTES </h1>

> [ÜST DİZİN  (main) ](../README.md)

<hr><br><br>



## Array.Adddd

* Mevcut array'a yeni değerleri ekler. Array ekleme işlemini kolaylaştırır. 
* [Koda git](Array.Addd.cs)

``` cs
int[] a=[]; Adddd(ref a, 1);  //a = [1]
```

<hr><br><br>





## Performans-Test

* Kod çalışma performansını test eder.
* [Koda git](Performans-Test-Class.cs)

``` cs
var test = new PerformanceTest(); test.RunTests();
```

<hr><br><br>





## Async Tetikleyici Sınıfı Şablonu

* Bu koddaki sınıf Asenkron tetikleme mekanizması için Delegate ve Async/await kullanarak Thread-safe olan bir implementasyondur.
* [Koda git](Async-Trigger-class.cs)

``` cs
AsyncTriggerClass sample = new AsyncTriggerClass();

// Default methodları çalıştır
sample.Func1(); // Debug.WriteLine("Default Func1 executed at: " + DateTime.UtcNow.Ticks);

// Custom methodları tanımla
sample.Func1 = () => Console.WriteLine("Custom Func1 executed");

// Custom methodları çalıştır
sample.Func1(); // Console.WriteLine("Custom Func1 executed");

// Async/await işlemleriyle özel Func2 çalıştır
RunParallelFunc(nn).Wait();
```

<hr><br><br>