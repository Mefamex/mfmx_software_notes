<h1 align="center" id="python-notes"> PYTHON NOTES </h1>

> [ÜST DİZİN  (main) ](../README.md)

<hr>

<br>



## Python Örnek Projeler

* Bu sayfada, Python programlama dilinin temel konularından ileri düzey konularına kadar çeşitli örnekler ve uygulamalar yer almaktadır.
* [Dökümana git](ornek-projeler.md)


<br><br><hr>

## First Run Dependencies

* Python bağımlılıklarının yüklü olup olmadığını kontrol eder.
* Yüklü olmayan bağımlılıkları yükleme komutunu Eğer bağımlılıklar yüklü değilse, otomatik olarak yükler ve ardından programı yeniden başlatır.
* Bu sayede, kullanıcıların bağımlılıkları manuel olarak yüklemesi gerekmez.
* [Koda git](first-run-dependencies.py)


```python
try:
  import selenium

except ImportError:
  subprocess.check_call([sys.executable, "-m", "pip", "install", "selenium"])

os.execl(sys.executable, sys.executable, *sys.argv)
```

<hr>