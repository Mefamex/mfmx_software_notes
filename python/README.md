# first-run-dependences.py
```python
try:
  import selenium
except ImportError:
  subprocess.check_call([sys.executable, "-m", "pip", "install", "selenium"])
os.execl(sys.executable, sys.executable, *sys.argv)
```
