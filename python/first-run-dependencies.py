#!/usr/bin/env python3 
# -*- coding: utf-8 -*- 

__name__ = "Bağımlılık Yükleyici ve Kontrolcü"
__version__ = "1.0.0"
__author__ = "Mefamex"
__url__ = "https://mefamex.com/"
__license__ = "MIT"
__description__ = "Bağımlılık Yükleyici ve Kontrolcü"
__url_github__ = "https://github.com/Mefamex/mfmx_software_notes/blob/main/python/first-run-dependencies.py"
__status__ = "Prototype" 
__date__ = "2024-02-03" 
__date_modify__ = "2024-02-04" 
__python_version__ = ">=3.8" 
__dependencies__ = {
    "python": ">=3.8",
}

__doc__ = """
Project Name: Bağımlılık Yükleyici ve Kontrolcü

Description:
Bu proje, Python bağımlılıklarının otomatik olarak yüklenmesini ve kontrol edilmesini sağlamak için geliştirilmiştir.
Proje, Python bağımlılıklarının kontrol edilmesini ve gerektiğinde yüklenmesini sağlar.

Features: 
    - Otomatik bağımlılık kontrolü ve yükleme
    - Python bağımlılıklarının kontrol edilmesi

Usage:
Proje, Python bağımlılıklarının kontrol edilmesini ve gerektiğinde yüklenmesini sağlar. Proje, Python 3.8 veya üstü sürümlerde çalışır.

Requirements:
- Python 3.8 veya üstü

License:
MIT License (https://opensource.org/licenses/MIT)

Author:
Mefamex (info@mefamex.com) (https://mefamex.com)

Contributors:
Devxar (https://devxar.com)

History:
- 1.0.0 (2025-02-03): Initial release


Disclaimer: 
    Bu yazılım "olduğu gibi" sunulmaktadır. Yazar, bu yazılımın kullanımı sonucunda ortaya çıkan herhangi bir zarardan sorumlu değildir.
"""




import os, sys, subprocess   
from time import sleep

def install_dependencies():
    try:
        import selenium
        import webdriver_manager
        import pandas as pd
        import openpyxl
        import requests
    except ImportError:
        print("Selenium ve bağımlılıkları yükleniyor...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", "--upgrade", "pip"])
        subprocess.check_call([sys.executable, "-m", "pip", "install", "selenium"])
        subprocess.check_call([sys.executable, "-m", "pip", "install", "webdriver_manager"])
        subprocess.check_call([sys.executable, "-m", "pip", "install", "openpyxl"])
        subprocess.check_call([sys.executable, "-m", "pip", "install", "pandas"])
        subprocess.check_call([sys.executable, "-m", "pip", "install", "requests"])
        print("\n\n\n")
        print("Bağımlılıklar yüklendi. Program yeniden başlatılıyor...")
        os.execl(sys.executable, sys.executable, *sys.argv)
        
install_dependencies()
import requests
import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import NoAlertPresentException, TimeoutException     
