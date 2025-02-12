<h1 align="center"> MYSQL : DATABASE MANAGMENT</h1>

> [ÜST DİZİN (SQL) ](readme.md)

<hr>
<br/>

> **2023-08-08** : Bu komut özetini kısaca ve hızlıca MySql RDBMS'ini tekrar etmek için oluşturdum.

> **2023-11-03** : Güncellenen konular ve deneyimimin artması ile yeni bilgiler ekledim.

> **2023-11-04** : SQL'i bu dosyadan ayırdım.

> **2024-10-01** : Yazılım güncellemeleri uygulandı.

> Asla konusu kapanmayacak bir konu olan veritabanı programlamada anlayışınızı ve becerilerinizi sağlamlaştırmak için uygulamalı pratik ve gerçek dünya projelerine odaklanmayı <u>unutmayın</u>, bana da <u>unutturmayın</u>.

[@mefamex](https://mefamex.com)

<hr><br><br>

<h2 align="center"> İÇİNDEKİLER </h2>

- [1. MYSQL HAKKINDA](#1-mysql-hakkinda)
  - [RDBMS ?](#rdbms-)
  - [İlişkisel Veritabanı (RDB) Nedir?](#i̇lişkisel-veritabanı-rdb-nedir)
- [2. MYSQL VETİTABANI YÖNETİMİ](#2-mysql-veti̇tabani-yöneti̇mi̇)
  - [Tüm Veritabanı İşlemleri](#tüm-veritabanı-i̇şlemleri)
  - [MySQL Fonksiyonları (en sık kullanılanlar)](#mysql-fonksiyonları-en-sık-kullanılanlar)



<hr><br><br><br><br>





## 1. MYSQL HAKKINDA

- MySQL, dünya genelinde yaygın olarak kullanılan bir ilişkisel veritabanı yönetim sistemidir (RDBMS).

- MySQL Programlama veya sorgu dili değil veritabanı yönetim sistemidir (DBMS).

- **Açık Kaynak ve Ücretsiz**: MySQL, kullanıcıların yazılımı özgürce kullanmasına, dağıtmasına ve değiştirmesine olanak tanır.

- **Performans ve Ölçeklenebilirlik**: MySQL, yüksek performans sunarak büyük veri setleriyle çalışabilme yeteneğine sahiptir. Bu, onu hem küçük projeler hem de büyük ölçekli uygulamalar için uygun hale getirir.

- **Güvenilirlik**: MySQL, veri bütünlüğünü sağlamak için çeşitli mekanizmalar sunar ve bu sayede güvenilir bir veri yönetimi sağlar.

- **Kullanım Kolaylığı**: Kullanıcı dostu arayüzü ve kapsamlı belgeleri sayesinde, MySQL'i öğrenmek ve kullanmak oldukça kolaydır.

- **Platformlar Arası Uyumluluk**: MySQL, Windows, Linux ve macOS gibi çeşitli işletim sistemlerinde çalışabilir.

- **ANSI SQL Standardına Uygunluk**: MySQL, ANSI SQL standartlarına uygun olarak tasarlanmıştır, bu da SQL sorgularının taşınabilirliğini artırır.

- **Geniş Kullanım Alan**ı: MySQL, Facebook, Twitter, Airbnb, Booking.com, Uber, GitHub ve YouTube gibi büyük web siteleri tarafından kullanılmaktadır. Ayrıca, WordPress, Drupal, Joomla! ve Contao gibi popüler içerik yönetim sistemlerinin temelini oluşturur.

<br>

### RDBMS ?

- **İlişkisel Veritabanı Yönetim Sistemi** anlamına gelir.

- İlişkisel ve Veri Tabanı Yönetim Sistemleri (RDBMS), MySQL, Microsoft SQL Server, Oracle ve Microsoft Access gibi tüm modern veritabanı sistemlerinin temelini oluşturur.

- RDBMS, veritabanındaki verilere erişmek için **SQL sorgularını** kullanır .

<br>

### İlişkisel Veritabanı (RDB) Nedir?

- İlişkisel veritabanı, verilerin tablolar halinde düzenlendiği ve bu tabloların birbirleriyle ilişkili olduğu bir veri yapısını ifade eder.

- Her tablo, belirli bir veri kümesini temsil eder ve tablolar arasındaki ilişkiler, ortak verilere dayanarak tanımlanır.

- Bu yapı, verilerin daha düzenli ve erişilebilir olmasını sağlar.




<hr><br><br><br><br>




## 2. MYSQL VETİTABANI YÖNETİMİ
### Tüm Veritabanı İşlemleri

> **CREATE DATABASE name** 
> ```SQL 
> -- CRETE DATABASE : Yeni bir SQL veritabanı oluşturmak için kullanılır.
> CREATE DATABASE DBname;
> ```

<br>

> **DROP DATABASE** 
> ```SQL 
> -- DROP DATABASE: Mevcut bir SQL veritabanını silmek için kullanılır.
> DROP DATABASE DBname;
> ```

<br>

> **SHOW DATABASES** 
> ```SQL 
> -- SHOW DATABASES: veritabanı listesinde kontrol edebilirsiniz.
> SHOW DATABASES ;
> ```

<br>

> **CREATE TABLE __** 
> ```SQL 
> -- CREATE TABLE: veritabanında yeni bir tablo oluşturmak için kullanılır.
> CREATE TABLE TableName (
>     column1 datatype,
>     column2 datatype,
>     column3 datatype,
>     ....
> );
> -- Veri Referans Türleri :
> --   - CHAR, VARCHAR, BINARY, TEXT, 
> --   - BIT, BOOL, INT, FLOAT, DOUBLE, DECIMAL, 
> --      - DECIMAL(size, after dot size), 
> --   - DATE, DATETIME, TIME
> CREATE TABLE NewTableName AS
>       SELECT column1, column2,...
>       FROM OldTableName
>       WHERE ....;
> ```

<br>

> **DROP TABLE** 
> ```SQL 
> -- DROP TABLE: Veritabanında var olan bir tabloyu silmek için kullanılır.
> DROP TABLE table_name;
> ```

<br>

> **ALTER TABLE** 
> ```SQL 
> -- ALTER TABLE: bir tabloya sütun eklemek, silmek veya değiştirmek için kullanılır.
> ALTER TABLE TableName ADD  NewColumnName datatype;
> ALTER TABLE TableName DROP WillDeleteColumnName ;
> -- Sütunun veri türünü değiştirmek için:
> ALTER TABLE TableName MODIFY COLUMN ColumnName datatype; 
> ```

<br>

> **KISITLAMALAR : CONSTRAINTS** 
> ```SQL 
> -- constraint: Tablodaki veriler için kuralları belirtir.
> --             Tüm kısıtlamalar aynı şekilde tanımlanır, silinir
> CREATE TABLE table_name (
>     column1 datatype constraint,
>     column2 datatype constraint,
>     column3 datatype constraint,
>     ....
> );
> -- NOT NULL   : Sütunun NULL değerine sahip olamayacağını garanti eder
> -- UNIQUE     : Sütundaki tüm değerlerin farklı olmasını sağlar
> -- PRIMARY KEY: Her satırı benzersiz şekilde tanımlar (~id, ~nick)
> -- FOREIGN KEY: Tablolar arasındaki bağlantıları yok edecek eylemleri önler
>
> -- CHECK      : Sütundaki değerlerin belirli bir koşulu karşılamasını sağlar
>    CREATE TABLE table_name (
>         ID int NOT NULL CHECK (ID>=0),
>         CONSTRAINT CHK_Ogrenci CHECK (Yas>=13 AND Sira>0)
>    ); 
>    ALTER TABLE Ogrenciler ADD CHECK (Ad NOT LIKE ('% %'));
>    ALTER TABLE Ogrenciler ADD CONSTRAINT CHK_Dil CHECK (Dil='TR');
>    ALTER TABLE Ogrenciler DROP CHECK     CHK_Dil ;
>
> -- DEFAULT    : Sütun için varsayılan bir değer ayarlar
>    CREATE TABLE table_name (
>         GirisTarihi date DEFAULT CURRENT_DATE()
>    ); 
>    ALTER TABLE Ogrenciler ALTER Dil SET  DEFAULT 'tr' ;
>    ALTER TABLE Ogrenciler ALTER Dil DROP DEFAULT ;
> -- CREATE INDEX: Çok hızlı bir şekilde veri akışı sağlar. (performans kaybı)
> --               Örnekleri diğerleri ile aynı
> ```

<br>

> **AUTO_INCREMENT** 
> ```SQL 
> -- AUTO_INCREMENT: Otomatik artırma özelliğini gerçekleştirmek.
> --               : Başlangıç : 1
> CREATE TABLE Persons (
>    Ogrenci_id int NOT NULL PRIMARY KEY  AUTO_INCREMENT,
> ) -- AUTO_INCREMENT=100 buraya da yazabilirsiniz ;'den önce
> ALTER TABLE Persons AUTO_INCREMENT=100;
> ```

<br>

> **DATE, DATETIME, TIMESTAMP, YEAR** 
> Tarih eklenirken sütun ile uyumlu mu diye sorun yaşanıyor
> ```SQL 
> -- DATE      : YYYY-AA-GG 
> -- DATETIME  : YYYY-AA-GG SS:DD:SS
> -- TIMESTAMP : YYYY-AA-GG SS:DD:SS
> -- YEAR      : YYYY / YY 
> ```

<br>

> **CREATE VIEW** 
> ```SQL 
> -- CREATE VIEW : Görünüm. Bir SQL ifadesinin sonuç kümesine
> --                         dayalı sanal bir tablodur.
> -- Görünümler ile karmaşık işlemlerde kod kalabalığından kaçınırız.
> CREATE VIEW view_name AS SELECT column1, column2, ... 
>                          FROM table_name WHERE condition;
> ```

<br><br><br>




### MySQL Fonksiyonları (en sık kullanılanlar)
>``` SQL
> SELECT      -- Veri seçme
> COUNT       -- Sayma
> SUM         -- Toplama
> AVG         -- Ortalama
> MIN         -- Minimum değer
> MAX         -- Maksimum değer
> GROUP BY    -- Gruplama
> ORDER BY    -- Sıralama
> WHERE       -- Koşul belirleme
> JOIN        -- Birleştirme
> INNER JOIN  -- İç birleştirme
> LEFT JOIN   -- Sol birleştirme
> RIGHT JOIN  -- Sağ birleştirme
> FULL JOIN   -- Tam birleştirme
> UNION       -- Birleştirme
> INSERT      -- Veri ekleme
> UPDATE      -- Veri güncelleme
> DELETE      -- Veri silme
> CREATE      -- Oluşturma
> DROP        -- Silme
> ALTER       -- Değiştirme
> TRUNCATE    -- Boşaltma
> DISTINCT    -- Tekil değerler
> LIMIT       -- Sınırlandırma
> HAVING      -- Gruplama sonrası filtreleme
> IF          -- Koşullu ifade
> CASE        -- Koşullu ifade
> COALESCE    -- İlk NULL olmayan değeri döndürme
> NULLIF      -- NULL kontrolü
> CAST        -- Veri türü dönüştürme
> CONVERT     -- Veri türü dönüştürme
> LENGTH      -- Byte uzunluğu
> CHAR_LENGTH -- Karakter uzunluğu
> LOWER       -- Küçük harf
> UPPER       -- Büyük harf
> TRIM        -- Boşluk kaldırma
> REPLACE     -- Değiştirir
> SUBSTRING   -- Alt dize
> LEFT        -- Soldan karakter
> RIGHT       -- Sağdan karakter
> MID         -- Alt dize
> POSITION    -- Konum bulma
> FIND_IN_SET -- Dizi içinde kontrol
> CONCAT      -- Metin birleştirir
> CONCAT_WS   -- Ayırıcı ile birleştirir
> DATE        -- Tarih döndürme
> NOW         -- Şu anki tarih ve zaman
> CURDATE     -- Bugünün tarihi
> CURTIME     -- Şu anki zaman
> DATEDIFF    -- İki tarih arasındaki fark
> DATE_FORMAT -- Tarih formatlama
> YEAR        -- Yıl döndürme
> MONTH       -- Ay döndürme
> DAY         -- Gün döndürme
> HOUR        -- Saat döndürme
> MINUTE      -- Dakika döndürme
> SECOND      -- Saniye döndürme
> EXTRACT     -- Tarih bileşenlerini çıkarma
> WEEK        -- Haftanın numarası
> LAST_INSERT_ID -- Son eklenen ID
> IFNULL      -- NULL kontrolü
> SOUNDEX     -- Ses benzerliği
> ASCII       -- ASCII değeri
> CHAR        -- ASCII karakter
> HEX         -- Hexadecimal
> UNHEX       -- Hexadecimal çevirme
> FORMAT      -- Formatlı sayı
> RAND        -- Rastgele sayı
> ROUND       -- Yuvarlama
> FLOOR       -- Aşağı yuvarlama
> CEIL        -- Yukarı yuvarlama
> ABS         -- Mutlak değer
> EXP         -- Üstel değer
> LOG         -- Logaritma
> POW         -- Üs alma
> SQRT        -- Karekök
> RADIANS     -- Dereceyi radyana çevirme
> DEGREES     -- Radyanı dereceye çevirme
> ATAN        -- Arctangent
> ATAN2       -- İki değerin arctangent'i
> ACOS > ASIN -- Arcsine
> COS         -- Cosine
> SIN         -- Sine
> TAN         -- Tangent
> COT         -- Cotangent
> DEGREES     -- Radyanı dereceye çevirme
> RADIANS     -- Dereceyi radyana çevirme
> PI          -- Pi sayısı
> RAND        -- Rastgele sayı
> CONCAT      -- Metin birleştirir
> CONCAT_WS   -- Ayırıcı ile birleştirir
> GROUP_CONCAT-- Gruplama ile birleştirme
> FIND_IN_SET -- Dizi içinde kontrol
> REPLACE     -- Değiştirir
> SUBSTRING   -- Alt dize
> TRIM        -- Boşluk kaldırma
> UPPER       -- Büyük harf
> LOWER       -- Küçük harf
> LENGTH      -- Byte uzunluğu
> CHAR_LENGTH -- Karakter uzunluğu
> ASCII       -- ASCII değeri
> CHAR        -- ASCII karakter
> POSITION    -- Konum bulma
> INSTR       -- Alt dize konumu
> LEFT        -- Soldan karakter
> RIGHT       -- Sağdan karakter
> MID         -- Alt dize
> REVERSE     -- Ters çevirir
> SOUNDEX     -- Ses benzerliği
> FORMAT      -- Formatlı sayı
> ROUND       -- Yuvarlama
> FLOOR       -- Aşağı yuvarlama
> CEIL        -- Yukarı yuvarlama
> ABS         -- Mutlak değer
> EXP         -- Üstel değer
> LOG         -- Logaritma
> POW         -- Üs alma
> SQRT        -- Karekök
> RADIANS     -- Dereceyi radyana çevirme
> DEGREES     -- Radyanı dereceye çevirme
> ATAN        -- Arctangent
> ATAN2       -- İki değerin arctangent'i
> ACOS        -- Arccosine
> ASIN        -- Arcsine
> COS         -- Cosine
> SIN         -- Sine
> TAN         -- Tangent
> COT         -- Cotangent
> PI          -- Pi sayısı
> RAND        -- Rastgele sayı
> CONCAT      -- Metin birleştirir
> CONCAT_WS   -- Ayırıcı ile birleştirir
> GROUP_CONCAT-- Gruplama ile birleştirme
> FIND_IN_SET -- Dizi içinde kontrol
> REPLACE     -- Değiştirir
> SUBSTRING   -- Alt dize
> TRIM        -- Boşluk kaldırma
> UPPER       -- Büyük harf
> LOWER       -- Küçük harf
> LENGTH      -- Byte uzunluğu
> CHAR_LENGTH -- Karakter uzunluğu
> ASCII       -- ASCII değeri
> CHAR        -- ASCII karakter
> POSITION    -- Konum bulma
> INSTR       -- Alt dize konumu
> LEFT        -- Soldan karakter
> RIGHT       -- Sağdan karakter
> MID         -- Alt dize
> REVERSE     -- Ters çevirir
> SOUNDEX     -- Ses benzerliği
> FORMAT      -- Formatlı sayı
> ROUND       -- Yuvarlama
> FLOOR       -- Aşağı yuvarlama
> CEIL        -- Yukarı yuvarlama
> ABS         -- Mutlak değer
> EXP         -- Üstel değer
> LOG         -- Logaritma
> POW         -- Üs alma
> SQRT        -- Karekök
>```






<hr><br><br><br><br>

> > > Nice to see you. Good luck!!!
