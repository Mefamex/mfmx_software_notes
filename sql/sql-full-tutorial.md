<h1 align="center"> SQL : DATABASE LANGUAGE </h1>

> [ÜST DİZİN (SQL) ](readme.md)

<hr>
<br/>

> **2023-08-08** : Bu komut özetini kısaca ve hızlıca MySql RDBMS'ini tekrar etmek için oluşturdum.

> **2023-11-03** : Güncellenen konular ve deneyimimin artması ile yeni bilgiler ekledim.

> **2023-11-04** : MYSQL dosyasından bu konuyu çıkarttım.

> **2024-10-01** : Yazılım güncellemeleri uygulandı.

> Asla konusu kapanmayacak bir konu olan veritabanı programlamada anlayışınızı ve becerilerinizi sağlamlaştırmak için uygulamalı pratik ve gerçek dünya projelerine odaklanmayı <u>unutmayın</u>, bana da <u>unutturmayın</u>.

[@mefamex](https://mefamex.com)

<hr><br><br>

<h2 align="center"> İÇİNDEKİLER </h2>

- [SQL Nedir ?](#sql-nedir-)
  - [SQL'in Özellikleri](#sqlin-özellikleri)
  - [SQL'in Avantajları](#sqlin-avantajları)
  - [SQL'in Dezavantajları](#sqlin-dezavantajları)
- [SQL Sorguları](#sql-sorguları)



<hr><br><br><br><br>




## SQL Nedir ?

> SQL (Structured Query Language), veritabanlarında  işlemlerini gerçekleştirmek için kullanılan bir **sorgu dilidir**.

> Veritabanlarının temel bileşenidir ve veritabanı yönetim sistemleri (DBMS) tarafından desteklenir.

<br>

### SQL'in Özellikleri

- **Veritabanı işlemleri**: SQL, veritabanlarında veri depolama, alma, güncelleme ve silme işlemlerini gerçekleştirmek için kullanılır.

- **Sorgulama**: SQL, veritabanlarında sorgulama işlemleri gerçekleştirmek için kullanılır.

- **Veri tanımlama**: SQL, veritabanlarında veri tanımlama işlemleri gerçekleştirmek için kullanılır.

- **Veri kontrolü**: SQL, veritabanlarında veri kontrolü işlemleri gerçekleştirmek için kullanılır.


<br>

### SQL'in Avantajları

- **Veritabanı yönetimini kolaylaştırır**: SQL, veritabanı yönetimini kolaylaştırır ve veritabanı işlemlerini hızlandırır.

- **Veri güvenliğini sağlar**: SQL, veritabanı güvenliğini sağlar ve verilerin korunmasını sağlar.

- **Veri analizini kolaylaştırır**: SQL, veritabanı analizini kolaylaştırır ve verilerin analizini hızlandırır.

<br>


### SQL'in Dezavantajları

- **Karmaşıktır**: SQL, karmaşık bir dil olabilir ve öğrenilmesi zor olabilir.

- **Hata yapabilir**: SQL, hata yapabilir ve veritabanına zarar verebilir.

- **Güvenlik açıkları olabilir** : SQL, güvenlik açıkları olabilir ve veritabanına saldırılar olabilir.




<hr><br><br><br>

## SQL Sorguları

> **SELECT ___ FROM ___**
> ```SQL 
> SELECT column1, column2 FROM table_name -- sadece column1 ve 2 yi seçer
> SELECT * FROM table_name -- tablodaki her sütunu seçer
> ```

<br>

> **SELECT DISTINCT ____ FROM ___** 
> ```SQL 
> -- DISTINCT: Sütundaki benzersiz değerleri alır
> SELECT DISTINCT column1, column2 FROM table_name 
> ```

<br>

> **SELECT ___ FROM ___ WHERE __kosul__** 
> ```SQL 
> -- WHERE : madde kayıtları filtrelemek için kullanılır.
> -- Sadece belirtilen koşulu sağlayan kayıtları çıkarmak için kullanılır.
> SELECT * FROM table_name WHERE valuee>10 
> SELECT * FROM table_name WHERE CustomerID = 1 
> --     =   eşitse
> --     >   büyükse
> --     <   küçükse
> --  >= <=  büyük/küçük eşitse
> --  != <>  eşit değilse
> -- BETWEEN arasındaysa
> --  LIKE   benzerse
> --    IN   birden fazla değerlerden birine eşitse
> ```

<br>

> **AND / OR / NOT / AND NOT / OR NOT /** 
> ```SQL 
> -- __ AND __ : && :  2'si gerekli 
> -- __ OR  __ : || :1'i gerekli
> --    NOT __ : != :2'si de olmamalı
> SELECT * FROM Ogrenciler WHERE County = 'TR' AND City = 'Ankara'
> SELECT * FROM Ogrenciler WHERE County = 'TR' OR  Langg = 'TR'
> SELECT * FROM Ogrenciler WHERE County IS NOT NULL AND NOT AGE  > 33  
> SELECT * FROM Ogrenciler WHERE NOT City = 'Istanbul' OR NOT City = 'Ankara' 
> -- AND ( __ OR __ )  : Parantez kullanabilirsin
> ```

<br>

> **ORDER BY __ ASC | DESC** 
> ```SQL  
> -- ORDER BY __     : artan  düzende sıralar
> -- ORDER BY __ ASC : artan  düzende sıralar
> -- ORDER BY __ DESC: azalan düzende sıralar
> SELECT * FROM Ogrenciler ORDER BY Ad 
> SELECT * FROM Ogrenciler ORDER BY Puan DESC 
> SELECT * FROM Ogrenciler ORDER BY Country ASC, Ad DESC
> ```

<br>

> **INSERT INTO __ VALUES __** 
> ```SQL
> -- INSERT INTO: Yeni kayıtlar eklemek için kullanılır
> INSERT INTO Ogrenciler VALUES (0, 'Ali', 12, 1 , 20, 30, 40)
> INSERT INTO Ogrenciler (O_id, Ad) VALUES (1, 'Veli')
> INSERT INTO Ogrenciler (O_id, Ad, Yas) VALUES (1, 'Osman', 15), (1, 'Hakan', 13)
> ```

<br>

> **DELETE ___** 
> ```SQL 
> -- DELETE : Tabloda var olan kayıtları silmek için kullanilir.
> DELETE FROM table_name WHERE condition;
> DELETE FROM Ogrenciler WHERE Sinif > 4 AND (Ad LIKE 'X%' OR Ad LIKE 'x%')
> 
> -- DİKKATTT    Tum Tablonun icindekileri siler
> DELETE FROM table_name 
> ```

<br>

> **___ LIMIT _** 
> ```SQL 
> -- LIMIT : döndürülecek row sayısını belirtmek için kullanılır.
> SELECT column_name(s) FROM table_name WHERE condition LIMIT numberr
> SELECT O_id , Ad      FROM Ogrenciler WHERE Puan > 3.9 LIMIT 3
> SELECT     *          FROM Ogrenciler WHERE Lang = 'en' LIMIT 10
> 
> SELECT column_name(s) FROM table_name LIMIT numberr
> SELECT      *         FROM Sehirler   LIMIT 85  
> -- ORDER BY gibi sıralayıcılarla da kullanabilirsiniz.
> ```

<br>

> **MIN() MAX() AVG() SUM() COUNT()** 
> ```SQL 
> -- DISTINCT: Sütundaki benzersiz değerleri alır
> SELECT COUNT(column_name) FROM table_name WHERE condition;
> SELECT   AVG(column_name) FROM table_name LIMIT 5
> SELECT   SUM(column_name) FROM table_name 
> SELECT COUNT(Country)     FROM Ogrenciler Where Puan > 5
> SELECT MIN(Puan) AS Dusuk FROM Ogrenciler
> SELECT MAX(Puan) AS Yuksek FROM Ogrenciler Sinif = 1

> ```

<br>

> **_______ LIKE ___** 
> ```SQL 
> -- LIKE : Sütunda belirtilen bir dizimi aramak için
> SELECT column1, column2, ... FROM table_name WHERE columnn LIKE pattern;
> SELECT * FROM Ogrenciler WHERE Ad LIKE 'O%'
> SELECT * FROM Ogrenciler WHERE City LIKE 'A%'
> -- % : Sıfır veya daha fazla karakteri temsil eder
> -- _ : Tek bir karakteri temsil eder
> -- 'a%'  : a ile başlıyan
> -- '%a'  : a ile biten
> -- '% %' : boşluk olan
> -- '_r%' : 2. harfi r olan 
> -- 'a_%' : a ile başlıyan en az 2 karakterli metin
> -- 'a%b' : a ile başlıyan b ile biten
> ```

<br>

> **___ IN __** 
> ```SQL 
> -- IN : birden fazla koşulun kısaltılmış halidir
> SELECT column_name(s) FROM table_name WHERE column_name IN (value1, value2, ...);
> SELECT column_name(s) FROM table_name WHERE column_name IN (SELECT STATEMENT);
> SELECT * FROM Ogrenciler WHERE Puan IN (4, 5, 6)
> SELECT * FROM Ogrenciler WHERE City IN ('ankara', 'instanbul')
> SELECT * FROM Ogrenciler WHERE Ad NOT IN ('Ali', 'ali', 'Veli', 'veli')
> ```

<br>

> **_____ BETWEEN __ AND __** 
> ```SQL 
> -- BETWEEN: belirli bir aralıktaki değerleri seçer. Sayi, Metin, Tarih...
> SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2; 
> SELECT * FROM Ogrenciler WHERE Puan  BETWEEN 4 AND 6
> SELECT * FROM Ogrenciler WHERE Tarih NOT BETWEEN '2000-01-25' AND '2010-10-30'
> SELECT * FROM Ogrenciler WHERE Ad    BETWEEN 'A' AND 'B' 
> ```

<br>

> **_________ AS __** 
> ```SQL 
> -- AS: bir tabloya veya tablodaki bir sütuna geçici bir isim vermek için kullanılır.
> -- Sütun adlarını daha okunabilir hale getirmek için sıklıkla kullanılır.
> -- Bir takma ad yalnızca söz konusu sorgu süresince var olur.
> SELECT column_name    AS alias_name   FROM table_name;
> SELECT column_name(s) FROM table_name AS alias_name;
> SELECT O_id AS idd , Ad AS Ogrenci_adi FROM Ogrenciler
> SELECT O_id, Ad, Yas
>       FROM Customers AS c, Orders AS o
>       WHERE City = 'ankara';
> ```

<br>

> **________ JOIN __ ON __** 
> ```SQL 
> -- JOIN : 2+ tablodaki satırları, ilişkili bir sütuna göre birleştirir
> SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Order
>       INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
> SELECT Liste1.id FROM Liste2 LEFT JOIN Soyad ON Liste1.id = Liste2.id;
> -- INNER JOIN: Eşleşen (ortak) değerlere sahip kayıtlar
> -- LEFT  JOIN: Sol tablodaki tüm kayıtları ve sağ tablodaki eşleşen kayıtlar
> -- RIGHT JOIN: Sağ tablodaki tüm kayıtları ve sol tablodaki eşleşen kayıtlar
> -- CROSS JOIN: Her iki tablodan da tüm kayıtlar
> ```

<br>

> **__________ UNION _________** 
> ```SQL 
> -- UNION: Sütundaki benzersiz değerleri alır
> SELECT column_name(s) FROM table1  UNION 
>                                    SELECT column_name(s) FROM table2;
> ```

<br>

> **_____ GROUP BY __** 
> ```SQL 
> -- DISTINCT: Sütundaki benzersiz değerleri alır
> SELECT column_name(s) FROM table_name         WHERE condition
>                       GROUP BY column_name(s) ORDER BY column_name(s);
> ```

<br>

> **______ HAVING ___** 
> ```SQL 
> -- HAVING : WHERE ile benzerdir ama belirgin farkı toplama yapar
> SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s)
>                       HAVING condition    ORDER BY column_name(s);
> SELECT COUNT(O_id), Sinif, Sehir FROM Ogrenciler GROUP BY Sinif 
>                                  HAVING COUNT(O_id) > 20
> ```

<br>

> **__________ EXISTS _______** 
> ```SQL 
> -- EXISTS : alt sorgudaki bir kaydın varlığını test etmek.
> SELECT column_name(s) FROM table_name WHERE EXISTS
>              (SELECT column_name FROM table_name WHERE condition);
> SELECT * FROM Ogrenciler WHERE EXISTS 
>               ( SELECT 1 FROM Ogrenciler WHERE Sinif IS NOT NULL);
> ```

<br>

> **__________ ANY _____** 
> ```SQL 
> -- ANY : alt sorgu değerlerinden HERHANGİ BİRİ koşulu karşılıyorsa TRUE döndürür
> SELECT column_name(s) FROM table_name WHERE column_name operator ANY 
>                  (SELECT column_name   FROM table_name   WHERE condition);
> SELECT * FROM Ogrenciler Where O_id = ANY 
>                  ( SELECT O_id FROM Kalanlar WHERE Puan>2 )
> ```

<br>

> **__________ ALL _____** 
> ```SQL 
> -- ANY :  aralıktaki tüm değerler için doğruysa TRUE olacağı anlamına gelir.
> SELECT column_name(s) FROM table_name WHERE column_name operator ANY 
>                  (SELECT column_name   FROM table_name   WHERE condition);
> SELECT * FROM Ogrenciler Where Puan > ALL 
>                  ( SELECT Puan FROM Sinavlar )
> ```

<br><br>

> **CASE _____ WHEN _ THEN _ELSE______ END** 
> ```SQL 
> -- CASE: Koşulları inceler ve ilk koşul karşılandığında değer döndürür
> -- Switch - Case - Default gibi. 
> -- Hiçbir koşul doğru değilse, cümledeki else değeri döndürür
> -- SELECT, ORDER BY, WHERE, HAVING, UPDATE, INSERT gibi ifadelerden sonra da..
> CASE
>     WHEN condition1 THEN result1
>     WHEN condition2 THEN result2
>     WHEN conditionN THEN resultN
>     ELSE result
> END;
> 
> SELECT O_id, Ad, Puan,
>        CASE 
>            WHEN Puan >= 90 THEN 'A'
>            WHEN Puan >= 80 THEN 'B'
>            WHEN Puan >= 70 THEN 'C'
>            WHEN Puan >= 60 THEN 'D'
>            ELSE 'F'
>        END AS BasariDurumu
> FROM Ogrenciler;
> -- En Sevdiğim <3
> ```

<br>

> **IFNULL()    COALESCE()** 
> ```SQL 
> -- IFNULL  : ifadenin NULL olması durumunda 2. değeri döndürür.
> -- COALESCE: ifadenin NULL olması durumunda sonraki değerlerden döndürür.
> SELECT Ad, Puan * IFNULL(ders_sayisi, 0) FROM Ogrenciler;
> SELECT Ad, Puan * COALESCE(ders_sayisi, donem_sayisi, 0) FROM Ogrenciler;
> ```




<hr><br><br><br><br>



> > > Nice to see you. Good luck!!!
