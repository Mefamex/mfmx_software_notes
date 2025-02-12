<h1 align="center"> DATABASE ROADMAP </h1>


> [ÜST DİZİN (SQL) ](readme.md)

<hr>
<br/>


> **2023-08-10** : Bu yol haritasını, veritabanı programlamayı öğrenmeyi ve tekrar etmeyi kolaylaştırmak için oluşturdum.

> **2023-10-28** : Güncellenen konular ve deneyimimin artması ile yeni bilgiler ekledim.

> **2024-10-01** : Yazılım güncellemeleri uygulandı.

> Asla konusu kapanmayacak bir konu olan veritabanı programlamada anlayışınızı ve becerilerinizi sağlamlaştırmak için uygulamalı pratik ve gerçek dünya projelerine odaklanmayı <u>unutmayın</u>, bana da <u>unutturmayın</u>.

[@mefamex](https://mefamex.com)

<hr><br><br>





<h2 align="center"> İÇİNDEKİLER </h2>

- [Database RoadMap](#database-roadmap)
  - [İçindekiler](#i̇çindekiler)
  - [1. Temel Kavramlar](#1-temel-kavramlar)
  - [2. SQL (Structured Query Language)](#2-sql-structured-query-language)
    - [a. SQL Temelleri](#a-sql-temelleri)
    - [b. Veri Sorgulama](#b-veri-sorgulama)
    - [c. Veri Manipülasyonu](#c-veri-manipülasyonu)
    - [d. Veri Tanımlama ve Kontrol](#d-veri-tanımlama-ve-kontrol)
    - [e. SQL VTYS'leri](#e-sql-vtysleri)
    - [f. Gelişmiş SQL Konuları](#f-gelişmiş-sql-konuları)
  - [3. NoSQL Veritabanları](#3-nosql-veritabanları)
  - [4. Veritabanı Tasarımı](#4-veritabanı-tasarımı)
  - [5. Veritabanı Güvenliği](#5-veritabanı-güvenliği)
  - [6. Veritabanı Yönetimi](#6-veritabanı-yönetimi)
  - [7. Veritabanı Programlama Dilleri ve Teknolojileri](#7-veritabanı-programlama-dilleri-ve-teknolojileri)
  - [8. Büyük Veri ve Veri Ambarları](#8-büyük-veri-ve-veri-ambarları)
  - [9. Gerçek Zamanlı Veritabanı Sistemleri](#9-gerçek-zamanlı-veritabanı-sistemleri)
  - [10. Ek Kaynaklar ve İleri Seviye Konular](#10-ek-kaynaklar-ve-i̇leri-seviye-konular)

<hr><br><br><br>




<p align="center">
=============================================<br>
<u><b>Veritabanı Programlama Yol Haritası<b></u> <br>
=============================================<br>
</p>



## 1. Temel Kavramlar

-   Veritabanı Nedir?
    -   Veri, Bilgi, Veritabanı Arasındaki Fark
    -   Veritabanının Amaçları ve Faydaları
    -   Veritabanı Türleri
        -   İlişkisel
        -   Nesne Yönelimli
        -   NoSQL (Doküman, Anahtar-Değer, Sütun Ailesi, Grafik)
        -   Hibrit
-   Veritabanı Yönetim Sistemi (VTYS)
    -   VTSY İşlevleri
    -   Popüler VTYS'ler: MySQL, PostgreSQL, Oracle, SQL Server, MongoDB, SQLite
-   Veri Modelleri
    -   İlişkisel Veri Modeli
    -   Varlık-İlişki Modeli (ERM)
    -   Nesne Yönelimli Veri Modeli
    -   NoSQL Veri Modelleri
-   Veritabanı Tasarımı
    -   Mantıksal Tasarım (ERM diyagramları)
    -   Fiziksel Tasarım (tablolar, alanlar, indeksler)
    -   Normalizasyon (1NF, 2NF, 3NF, BCNF)
    -   Veritabanı Performansı ve Optimizasyonu
-   Temel Prensipler
    -   ACID (Atomicity, Consistency, Isolation, Durability)
    -   BASE (Basically Available, Soft state, Eventually consistent)
    -   OLTP (Online Transaction Processing)
    -   OLAP (Online Analytical Processing)

<hr><br><br><br>

## 2. SQL (Structured Query Language)

### a. SQL Temelleri

-   DDL (Data Definition Language): CREATE, ALTER, DROP
-   DML (Data Manipulation Language): SELECT, INSERT, UPDATE, DELETE
-   DCL (Data Control Language): GRANT, REVOKE
-   TCL (Transaction Control Language): COMMIT, ROLLBACK, SAVEPOINT

### b. Veri Sorgulama

-   SELECT Komutu
-   WHERE, ORDER BY, GROUP BY, HAVING
-   JOIN işlemleri: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN
-   Alt Sorgular (Subqueries)
-   Fonksiyonlar (Aggregate, String, Date)

### c. Veri Manipülasyonu

-   Veri ekleme (INSERT)
-   Veri güncelleme (UPDATE)
-   Veri silme (DELETE)

### d. Veri Tanımlama ve Kontrol

-   Tablo işlemleri: CREATE TABLE, ALTER TABLE, DROP TABLE
-   İndeks oluşturma (CREATE INDEX)
-   Kullanıcı yetkilendirme (CREATE USER, GRANT, REVOKE)

### e. SQL VTYS'leri

-   MySQL
-   PostgreSQL
-   Microsoft SQL Server
-   Oracle Database
-   SQLite

### f. Gelişmiş SQL Konuları

-   Fonksiyonlar
    -   Yerleşik fonksiyonlar (aritmetik, metin, tarih)
    -   Kullanıcı tanımlı fonksiyonlar
-   Stored Procedures (Saklı Yordamlar)
-   Triggers (Tetikleyiciler)
-   Views (Görünümler)
-   Transactions ve ACID Prensipleri
-   Indexing & Query Optimization




<hr><br><br><br>

## 3. NoSQL Veritabanları

-   NoSQL Nedir? Avantajları ve Dezavantajları
-   NoSQL Veritabanı Türleri
    -   Doküman Tabanlı (MongoDB, CouchDB)
    -   Anahtar-Değer (Redis, DynamoDB)
    -   Sütun-Family (Cassandra, HBase)
    -   Grafik Veritabanları (Neo4j, ArangoDB)
-   NoSQL vs. SQL Karşılaştırması
-   Veri Modelleme ve Performans Optimizasyonu
-   NoSQL Kavramları
    -   Sharding, Replication, Partitioning
    -   CAP Teoremi

<hr><br><br><br>

## 4. Veritabanı Tasarımı

-   Gereksinim Analizi
-   Mantıksal Tasarım (ER (ERM) Diyagramları)
-   Fiziksel Tasarım (Tablolar, Alanlar, İndeksler)
-   Normalizasyon (1NF, 2NF, 3NF, BCNF)
-   Denormalizasyon Stratejileri
-   Referans Bütünlüğü (Referential Integrity)
-   Veritabanı Performansı ve Optimizasyonu
-   Partitioning & Sharding

<hr><br><br>

## 5. Veritabanı Güvenliği

-   Kimlik Doğrulama ve Yetkilendirme (Authentication & Authorization)
-   Veri Şifreleme (At-Rest & In-Transit)
-   SQL Injection ve Önleme Yöntemleri
-   Yedekleme ve Kurtarma Stratejileri
-   Role-Based Access Control (RBAC)

<hr><br><br>

## 6. Veritabanı Yönetimi

-   Veritabanı Yöneticisi (DBA)
-   Veritabanı Yedekleme ve Geri Yükleme
-   Performans Takibi ve Optimizasyon
-   Yedekleme ve Geri Yükleme Stratejileri
-   Logging & Auditing
-   Veritabanı Ölçeklendirme (Vertical vs. Horizontal)

<hr><br><br>

## 7. Veritabanı Programlama Dilleri ve Teknolojileri

-   Veritabanı Bağlantısı (PL's: JDBC, ODBC, ADO.NET)
-   SQL ile Programlama
-   Veritabanı İşlemleri
    -   Sorgu çalıştırma
    -   Veri okuma ekleme, güncelleme, silme
-   ORM (Object-Relational Mapping) Kullanımı
    -   ORM kullanarak veritabanı işlemlerini kolaylaştırma
    -   ORM araçları :
        -   Hibernate (Java)
        -   Entity Framework (C#)
        -   SQLAlchemy (Python)
-   Veritabanı Bağlantı Teknolojileri
    -   JDBC (Java), ODBC, ADO.NET (C#)
    -   psycopg2 (Python PostgreSQL), pymysql (Python MySQL)

<hr><br><br>

## 8. Büyük Veri ve Veri Ambarları

-   Big Data Kavramları
-   Data Warehousing & ETL
-   Apache Hadoop & HDFS
-   Apache Spark & Hive
-   Google BigQuery

<hr><br><br>

## 9. Gerçek Zamanlı Veritabanı Sistemleri

-   Kafka & Streaming Databases
-   Firebase Realtime Database
-   Olay Odaklı Mimariler (Event-Driven Architectures)

<hr><br><br>

## 10. Ek Kaynaklar ve İleri Seviye Konular

-   Veritabanı Yönetimi İçin Araçlar (phpMyAdmin, pgAdmin, Robo 3T, DBeaver)
-   Veritabanı Performans Analizi
-   Veritabanı Göçleri (Database Migrations)
-   CI/CD ve Otomatik Veritabanı Dağıtımları
-   Veri Senkronizasyonu ve Çoğaltma (Replication & Synchronization)
-   Makine Öğrenimi ve Veritabanları

<hr><br><br><br><br>

> > > Nice to see you. Good luck!!!
