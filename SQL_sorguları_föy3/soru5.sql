SELECT b.birim_ad AS 'Birim',
       COUNT(c.calisan_id) AS 'Calisan_Sayisi'
FROM calisanlar AS c
JOIN birimler AS b
    ON c.calisan_birim_id = b.birim_id
GROUP BY b.birim_ad;