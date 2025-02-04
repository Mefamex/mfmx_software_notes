<h1 align="center" id="yaml-tr"> YAML DOCSTRING [TR]</h1>


> [UPPER DIRECTORY (Docstring-Project) ](readme.md)

<hr>
<br/>

* YAML ve TOML dosyaları, yapılandırma verilerini saklamak için yaygın olarak kullanılır.
* YAML, insan tarafından okunabilir bir format sunarken, TOML ise daha basit bir yapılandırma dosyası formatıdır ve genellikle projelerin bağımlılıklarını ve ayarlarını tanımlamak için tercih edilir. 

<h3> project.yaml </h3>

``` yaml
name: "Proje Adı" # Projenizin tam adı
display_name: "Proje Adı (Kullanıcı Dostu)" # Kullanıcı arayüzünde gösterilecek ad (isteğe bağlı)
description: "Projenin Kısa ve Öz Açıklaması" # Projenizin ne yaptığını ve amacını açıklayan kısa bir özet
long_description: | # Projenin detaylı açıklaması (Markdown formatında)
    Bu proje, ... (detaylı açıklamalar buraya) ...
    Özellikleri:
        - ...
        - ...
version: "1.0.0" # Proje sürümü (Semantik Sürümleme önerilir)
release_date: "2024-05-16" # Son sürümün yayınlanma tarihi
authors: # Proje geliştiricileri
    - name: "Geliştirici 1 Adı"
        email: "gelistirici1@email.com"
        github: "kullaniciadi1" # Github kullanıcı adı (isteğe bağlı)
    - name: "Geliştirici 2 Adı"
        email: "gelistirici2@email.com"
        linkedin: "kullaniciadi2" # LinkedIn kullanıcı adı (isteğe bağlı)
maintainers: # Proje bakımcıları (geliştiricilerden farklıysa)
    - name: "Bakımcı 1 Adı"
        email: "bakimci1@email.com"
repository: # Proje kaynak kodu deposu
    type: "git" # Depo türü (git, svn vb.)
    url: "https://github.com/kullanici/proje" # Depo URL'si
    branch: "main" # Ana dal adı
license: # Proje lisansı
    name: "MIT Lisansı" # Lisans adı
    url: "https://opensource.org/licenses/MIT" # Lisans URL'si
keywords: # Projeyi tanımlayan anahtar kelimeler
    - "c#"
    - ".net"
    - "proje"
    - "örnek"
technologies: # Kullanılan teknolojiler ve araçlar
    programming_languages:
        - "C#"
        - "JavaScript" # (Eğer varsa)
    frameworks:
        - ".NET 6"
        - "ASP.NET Core" # (Eğer varsa)
    libraries: # Kullanılan kütüphaneler
        - "Newtonsoft.Json"
        - "Entity Framework Core"
    tools: # Geliştirme araçları
        - "Visual Studio 2022"
        - "Git"
build: # Projenin nasıl derlendiği
    instructions: | # Derleme talimatları (Markdown formatında)
        1. `dotnet restore` komutunu çalıştırın.
        2. `dotnet build` komutunu çalıştırın.
    scripts: # Derleme komutları (isteğe bağlı)
        - "build.sh" # (Linux/macOS için)
        - "build.bat" # (Windows için)
installation: # Projenin nasıl kurulduğu
    instructions: | # Kurulum talimatları (Markdown formatında)
        1. Gerekli bağımlılıkları yükleyin.
        2. Projeyi klonlayın.
        3. Konfigürasyon ayarlarını yapın.
    dependencies: # Bağımlılıklar
        - ".NET 6 Runtime"
        - "SQL Server" # (Eğer varsa)
usage: # Projenin nasıl kullanıldığı
    instructions: | # Kullanım talimatları (Markdown formatında)
        1. Uygulamayı çalıştırın.
        2. ... (kullanım adımları) ...
    examples: # Kullanım örnekleri (isteğe bağlı)
        - |
            ```csharp
            // Örnek kod
            ...
            ```
documentation: # Proje dokümantasyonu
    url: "https://github.com/kullanici/proje/wiki" # Wiki veya diğer dokümantasyon URL'si
    api_reference: "https://github.com/kullanici/proje/api" # API referans dokümantasyonu URL'si (isteğe bağlı)
contributing: # Projeye nasıl katkıda bulunulacağı
    guidelines: "CONTRIBUTING.md" # Katkıda bulunma yönergeleri dosyası
    code_of_conduct: "CODE_OF_CONDUCT.md" # Davranış kuralları dosyası (isteğe bağlı)
testing: # Projenin nasıl test edildiği
    instructions: | # Test talimatları
        1. Test ortamını kurun.
        2. `dotnet test` komutunu çalıştırın.
    coverage: "https://codecov.io/gh/kullanici/proje" # Test kapsamı raporu (isteğe bağlı)
deployment: # Projenin nasıl dağıtıldığı
    instructions: | # Dağıtım talimatları
        1. Sunucuya yükleyin.
        2. ... (dağıtım adımları) ...
    environments: # Dağıtım ortamları
        - name: "Geliştirme"
            url: "https://dev.example.com"
        - name: "Üretim"
            url: "https://prod.example.com"
contact: # İletişim bilgileri
    email: "info@example.com"
    twitter: "@example" # (isteğe bağlı)
    discord: "https://discord.gg/example" # (isteğe bağlı)
```