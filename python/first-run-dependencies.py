# ==============================================================================
# author:   Mefamex
# website:  https://mefamex.com/
# licence:  MIT
# ==============================================================================
#                   Bağımlılık Yükleyici ve Kontrolcü
#
# Bu betik, gerekli Python bağımlılıklarının yüklü olup olmadığını kontrol eder.
# Eğer bağımlılıklar yüklü değilse, otomatik olarak yükler ve ardından programı
# yeniden başlatır. Bu sayede, kullanıcıların bağımlılıkları manuel olarak
# yüklemesi gerekmez.
#
# Kullanım:
#   Betiği çalıştırdığınızda, bağımlılıklar kontrol edilecek ve gerekirse
#   yüklenecektir. Ardından program yeniden başlatılacak ve normal işleyişine
#   devam edecektir.
#
# Not:
#   * Bu betik, pip kullanarak bağımlılıkları yükler. Bu nedenle, sisteminizde
#                                         pip'in yüklü olduğundan emin olun.
#   * Bağımlılıkları değiştirerek kullanın. 
# ==============================================================================


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
