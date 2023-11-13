-- Melihat Kategori barang yang paling banyak barangnya.

SELECT nama_kategori, COUNT(*) AS jumlah_barang
FROM Barang
INNER JOIN Kategori ON Barang.id_kategori = Kategori.id
GROUP BY nama_kategori
ORDER BY jumlah_barang DESC;