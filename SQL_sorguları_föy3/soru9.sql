   SELECT c.ad AS 'Ad',
       c.soyad AS 'Soyad',
       u.unvan_calisan AS 'Unvan'
FROM calisanlar c
JOIN unvan u
   ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');