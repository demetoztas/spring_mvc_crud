SELECT c.ad,
       c.soyad,
       c.maas
FROM calisanlar AS c
JOIN birimler AS b
   ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yazılım', 'Donanı0m');