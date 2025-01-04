using System.Diagnostics;

public class PerformanceTest
{
    private readonly Stopwatch _sw = new();

    public void RunTests(int count = 0)
    {
        Console.WriteLine("=== Performans Testi ===\n");
        Testt();
    }


    private void Testt()
    {
        Console.WriteLine("######################################\nTestNeuronCreation");
        var startMemory = GC.GetTotalMemory(true);
        _sw.Restart();

        /// CODE HERE


        _sw.Stop();
        var endMemory = GC.GetTotalMemory(true);
        var memoryUsedMB = (endMemory - startMemory) / (1024.0 * 1024.0);

        Console.WriteLine($"Süre: {_sw.ElapsedMilliseconds}ms");
        Console.WriteLine($"Bellek: {memoryUsedMB:F2}MB");
    }
}
