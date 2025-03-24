SELECT b.birim_ad AS 'Birim',
       c.ad AS 'Ad',
       c.soyad AS 'Soyad',
       c.maas AS 'Maaş'
FROM calisanlar c
JOIN birimler b
   ON c.calisan_birim_id = b.birim_id
WHERE c.maas = (
    SELECT MAX(c2.maas)
    FROM calisanlar c2
    WHERE c2.calisan_birim_id = c.calisan_birim_id
);