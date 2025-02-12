/*
* title : Araba Satıs Bayii Veritabani Yönetimi 
* author: @mefamex
* date  : 2023 November
*/



-- 1. Veritabanı oluşturma ve kullanma (DDL)
CREATE DATABASE IF NOT EXISTS CarDealership;
-- DROP DATABASE  cardealership;
USE CarDealership;


-- 2. Önceden var olan tabloları temizleyelim (DDL)
DROP TABLE IF EXISTS arabalar;
DROP TABLE IF EXISTS musteriler;


-- 3. 'musteriler' tablosunu oluşturma: Müşteri bilgileri, PK ve UNIQUE kısıtlamaları (DDL)
CREATE TABLE musteriler (
    musteri_id INT AUTO_INCREMENT PRIMARY KEY, -- Her müşteriye benzersiz ID
    ad     VARCHAR(50) NOT NULL,  -- Müşterinin adı
    soyad  VARCHAR(50) NOT NULL, -- Müşterinin soyadı
    email  VARCHAR(100) UNIQUE   -- E-posta adresi (benzersiz)
) ENGINE=InnoDB;


-- 4. 'arabalar' tablosunu oluşturma: Araç bilgileri, opsiyonel müşteri bilgisi FK (DDL)
CREATE TABLE arabalar (
    araba_id   INT AUTO_INCREMENT PRIMARY KEY, -- Benzersiz araba ID'si
    marka      VARCHAR(50) NOT NULL,           -- Marka
    model      VARCHAR(50) NOT NULL,           -- Model
    yil        YEAR,                           -- Üretim yılı (YEAR veri tipi)
    fiyat      DECIMAL(10,2) NOT NULL,         -- Fiyat (ondalıklı)
    musteri_id INT DEFAULT NULL,               -- Araba satıldıysa müşteri ID'si (NULL olabilir)
    CONSTRAINT fk_musteri FOREIGN KEY (musteri_id)
                REFERENCES musteriler(musteri_id)
                ON DELETE SET NULL 
                -- Müşteri silinirse, bu alan NULL olur
) ENGINE=InnoDB;


-- 5. Örnek veri ekleme (DML)
INSERT INTO musteriler (ad, soyad, email) VALUES
    ('Ahmet', 'Yilmaz', 'ahmet@example.com'), ('Ayse',  'Kara',   'ayse@example.com');
INSERT INTO arabalar (marka, model, yil, fiyat, musteri_id) VALUES
    ('Toyota', 'Supraaa', 1970, 20000.00, NULL), ('Honda',  'Civic',   2023, 18000.00, 1);   
    --                  null-> satılmamış araç         -- Ahmet'e katılmış (musteri_id=1)


-- 6. SELECT ile JOIN: Arabaları müşteri bilgileriyle birleştirerek listeleme (DML)
SELECT a.araba_id, a.marka, a.model, a.yil, a.fiyat,
        m.ad AS musteri_ad, m.soyad AS musteri_soyad
FROM arabalar a LEFT JOIN musteriler m ON a.musteri_id = m.musteri_id;


-- 7. UPDATE: Satılmamış bir aracı, başka bir müşteriye (Ayse) satma (DML)
UPDATE arabalar SET musteri_id = 2 WHERE araba_id = 1;  -- Artık araba 1, musteri_id=2 (Ayse)


-- 8. DELETE: Bir müşteriyi silme; ilgili arabaların FK değeri NULL olur (DML)
DELETE FROM musteriler WHERE musteri_id = 2;


-- 9. TRANSACTION: İşlemler toplu yapılırken hata durumunda geri almayı sağlayan örnek (DML)
START TRANSACTION;
    UPDATE arabalar SET fiyat = fiyat * 0.95 WHERE yil < 2020;  -- 2020 öncesi araçlarda %5 indirim
COMMIT;


-- 10. INDEX: 'marka' alanında aramaları hızlandırmak için indeks oluşturma (DDL)
CREATE INDEX idx_marka ON arabalar(marka);


-- 11. VIEW: Karmaşık sorguları basitleştirmek için bir görünüm oluşturma (DDL)
CREATE VIEW v_araba_musteri AS
SELECT a.araba_id, a.marka, a.model, a.yil, a.fiyat,
        m.ad AS musteri_ad, m.soyad AS musteri_soyad
FROM arabalar a LEFT JOIN musteriler m ON a.musteri_id = m.musteri_id;


-- 12. AGGREGATE Fonksiyon: Araç fiyatlarının ortalamasını hesaplama (DML)
SELECT AVG(fiyat) AS ortalama_fiyat FROM arabalar;


-- 13. SUBQUERY: Fiyatı ortalama fiyatın üzerinde olan araçları listeleme
SELECT * FROM arabalar
WHERE fiyat > (SELECT AVG(fiyat) FROM arabalar);


-- 14. GROUP BY ve HAVING: Her markanın araç sayısı ve ortalama fiyatını hesaplama
SELECT marka, COUNT(*) AS toplam_arac, AVG(fiyat) AS ortalama_fiyat
FROM arabalar
GROUP BY marka
HAVING toplam_arac >= 1;  -- En az 1 araç içeren markalar


-- 15. STORED PROCEDURE: Yeni araç eklemek için procedure oluşturma
DELIMITER $$
    CREATE PROCEDURE sp_araba_ekle (
        IN p_marka VARCHAR(50), IN p_model VARCHAR(50),
        IN p_yil YEAR,        IN p_fiyat DECIMAL(10,2),
        IN p_musteri_id INT
    )
    BEGIN
        INSERT INTO arabalar (marka, model, yil, fiyat, musteri_id)
        VALUES (p_marka, p_model, p_yil, p_fiyat, p_musteri_id);
    END$$
DELIMITER ;
-- Procedure'ü çağırma örneği:
CALL sp_araba_ekle('Ford', 'Focus', 2018, 15000.00, NULL);


-- 16. TRIGGER: Arabalar tablosundan silinen kaydı loglamak için trigger oluşturma
-- 16.1. Log tablosunu oluşturma
DROP TABLE IF EXISTS arabalar_log;
CREATE TABLE arabalar_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    araba_id INT,
    marka VARCHAR(50),
    model VARCHAR(50),
    silme_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP  -- Silinme zamanını otomatik alır
) ENGINE=InnoDB;


-- 16.2. Silme işlemi sonrası trigger ile log kaydı ekleme
DELIMITER $$
    CREATE TRIGGER trg_araba_delete AFTER DELETE ON arabalar
    FOR EACH ROW
    BEGIN
        INSERT INTO arabalar_log (araba_id, marka, model)
        VALUES (OLD.araba_id, OLD.marka, OLD.model);
    END$$
DELIMITER ;


-- 17. TEMPORARY TABLE: Geçici tablo kullanımı örneği
CREATE TEMPORARY TABLE tmp_araba AS
SELECT * FROM arabalar WHERE yil >= 2020;
-- Geçici tablo sadece bu oturum süresince kullanılabilir.
SELECT * FROM tmp_araba;
-- (Opsiyonel) Geçici tabloyu manuel silmek:
DROP TEMPORARY TABLE tmp_araba;


-- 18. EXPLAIN: Sorgu performans analizini yapmak için sorgu planını görüntüleme
EXPLAIN SELECT * FROM arabalar WHERE fiyat > 15000;
 