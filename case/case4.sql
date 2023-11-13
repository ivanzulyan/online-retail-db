-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT Pelanggan.nama,
SUM(total_harga) / COUNT(*) AS rata_rata_total
FROM Transaksi
INNER JOIN Pelanggan ON Transaksi.id_pelanggan = Pelanggan.id
WHERE tanggal_transaksi BETWEEN CURRENT_DATE - INTERVAL 1 MONTH AND CURRENT_DATE
GROUP BY Pelanggan.id, Pelanggan.nama;