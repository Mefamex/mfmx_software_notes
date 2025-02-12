:: ========================================================
:: Script Adı     : Ağ Sıfırlama ve Bağlantı Sorunlarını Giderme
:: Yazar          : mefamex
:: Tarih          : 10.15.2024
:: Açıklama       : Bu script, Windows ağ ayarlarını sıfırlayarak 
::                 bağlantı sorunlarını gidermek için IP, DNS, TCP, 
::                 Winsock ve güvenlik duvarı yapılandırmalarını yeniler.
::
:: Sorumluluk Reddi: Bu script, olduğu gibi sağlanmıştır. Kullanımından 
::                   doğabilecek herhangi bir sorun kullanıcıya aittir.
:: ========================================================


:: Baz alınan ana komutlar : 
:: netsh int ip reset
:: netsh advfirewall reset
:: netsh winsock reset
:: ipconfig /flushdns
:: ipconfig /release
:: ipconfig /renew


@echo off
echo Ağ ayarları sıfırlanıyor, lütfen bekleyin...

:: IP ve TCP sıfırlama
netsh int ip reset
netsh int tcp reset
netsh int ipv6 reset

:: Winsock sıfırlama
netsh winsock reset

:: DNS temizleme ve sıfırlama
ipconfig /flushdns
ipconfig /registerdns

:: IP adresini yenileme
ipconfig /release
ipconfig /renew

:: Ağ yapılandırmasını yeniden yükleme
netsh interface ip delete arpcache

:: Güvenlik duvarı sıfırlama
netsh advfirewall reset

:: Ağ bağdaştırıcısını sıfırlama (yalnızca Ethernet veya Wi-Fi için uygunsa)
netsh interface set interface "Wi-Fi" admin=disable
netsh interface set interface "Wi-Fi" admin=enable

:: Bilgilendirme
echo İşlem tamamlandı! Bilgisayarı yeniden başlatmanız önerilir.
pause