<h1 align="center" id="python-notes"> PYTHON NOTES </h1>

> [ÜST DİZİN  (main) ](../README.md)


<br>



## first-run-dependencies.py

* Python bağımlılıklarının yüklü olup olmadığını kontrol eder.
* Yüklü olmayan bağımlılıkları yükleme komutunu Eğer bağımlılıklar yüklü değilse, otomatik olarak yükler ve ardından programı yeniden başlatır.
* Bu sayede, kullanıcıların bağımlılıkları manuel olarak yüklemesi gerekmez.
* [Koda git](first-run-dependences.py)


```python
try:
  import selenium
except ImportError:
  subprocess.check_call([sys.executable, "-m", "pip", "install", "selenium"])
os.execl(sys.executable, sys.executable, *sys.argv)
```
