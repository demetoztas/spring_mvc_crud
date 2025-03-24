
CREATE DATABASE CalisanDB;
GO


CREATE TABLE birimler (
    birim_id INT NOT NULL,
    birim_ad CHAR(25) NOT NULL,
    CONSTRAINT PK_birimler PRIMARY KEY (birim_id)
);


CREATE TABLE calisanlar (
    calisan_id INT NOT NULL,
    ad CHAR(25) NULL,
    soyad CHAR(25) NULL,
    maas INT NULL,
    katilmaTarihi DATETIME NULL,
    calisan_birim_id INT NOT NULL,
    CONSTRAINT PK_calisanlar PRIMARY KEY (calisan_id),
    CONSTRAINT FK_calisanlar_birimler
        FOREIGN KEY (calisan_birim_id)
        REFERENCES birimler(birim_id)
);


CREATE TABLE unvan (
    unvan_calisan_id INT NOT NULL,
    unvan_calisan CHAR(25) NULL,
    unvan_tarih DATETIME NULL,
    CONSTRAINT FK_unvan_calisanlar
        FOREIGN KEY (unvan_calisan_id)
        REFERENCES calisanlar(calisan_id)
);


CREATE TABLE ikramiye (
    ikramiye_calisan_id INT NOT NULL,
    ikramiye_ucret INT NULL,
    ikramiye_tarih DATETIME NULL,
    CONSTRAINT FK_ikramiye_calisanlar
        FOREIGN KEY (ikramiye_calisan_id)
        REFERENCES calisanlar(calisan_id)
);