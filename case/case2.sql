-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.

SELECT nama_barang, COUNT(*) AS jumlah_barang
FROM Transaksi
inner join Barang ON Transaksi.id_barang =  Barang.id
GROUP BY nama_barang 
ORDER BY jumlah_barang DESC
LIMIT 3;