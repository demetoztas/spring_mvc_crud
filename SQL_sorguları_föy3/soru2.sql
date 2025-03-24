
INSERT INTO birimler (birim_id, birim_ad)
VALUES
(1, 'Yazılım'),
(2, 'Donanım'),
(3, 'Güvenlik');

INSERT INTO calisanlar 
(calisan_id, ad, soyad, maas, katilmaTarihi, calisan_birim_id)
VALUES
(1, N'İsmail', N'İşeri',    100000, '2014-02-20 00:00:00.000', 1),
(2, N'Hami',   N'Satılmış', 80000,  '2014-06-11 00:00:00.000', 2),
(3, N'Dumuş',  N'Şahin',    30000,  '2014-02-20 00:00:00.000', 1),
(4, N'Kağan',  N'Yazar',    50000,  '2014-02-20 00:00:00.000', 3),
(5, N'Meryem', N'Soysaldı', 40000,  '2014-06-11 00:00:00.000', 3),
(6, N'Duygu',  N'Akşehir',  20000,  '2014-06-11 00:00:00.000', 2),
(7, N'Kübra',  N'Seyhan',   75000,  '2014-01-20 00:00:00.000', 1),
(8, N'Gülcan', N'Yıldız',   90000,  '2014-04-11 00:00:00.000', 3);

INSERT INTO ikramiye
(ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih)
VALUES
(1, 5000, '2016-02-20 00:00:00.000'),
(2, 3000, '2016-06-11 00:00:00.000'),
(3, 2000, '2016-02-20 00:00:00.000'),
(4, 4500, '2016-02-20 00:00:00.000'),
(5, 3500, '2016-06-11 00:00:00.000');

INSERT INTO unvan
(unvan_calisan_id, unvan_calisan, unvan_tarih)
VALUES
(1, N'Yönetici',            '2016-02-20 00:00:00.000'),
(2, N'Personel',            '2016-06-11 00:00:00.000'),
(3, N'Personel',            '2016-02-20 00:00:00.000'),
(4, N'Müdür',               '2016-06-11 00:00:00.000'),
(5, N'Yönetici Yardımcısı', '2016-06-11 00:00:00.000'),
(6, N'Personel',            '2016-06-11 00:00:00.000'),
(7, N'Takım Lideri',        '2016-06-11 00:00:00.000'),
(8, N'Takım Lideri',        '2016-06-11 00:00:00.000');
GO

