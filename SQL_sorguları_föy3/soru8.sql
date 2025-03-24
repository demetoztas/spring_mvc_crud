SELECT c.ad AS 'Ad',
       c.soyad AS 'Soyad',
       b.birim_ad AS 'Birim',
       u.unvan_calisan AS 'Unvan',
       i.ikramiye_ucret AS 'İkramiye Ücreti'
FROM calisanlar c
JOIN birimler b 
   ON c.calisan_birim_id = b.birim_id
JOIN unvan u
   ON c.calisan_id = u.unvan_calisan_id
JOIN ikramiye i
   ON c.calisan_id = i.ikramiye_calisan_id;