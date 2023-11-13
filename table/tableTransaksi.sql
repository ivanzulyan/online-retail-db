create table Transaksi (
	id  INT PRIMARY KEY NOT NULL auto_increment,
	tanggal_transaksi DATE,
	jumlah_barang int,
	total_harga DECIMAL(10,2),
	id_pelanggan INT(5),
	id_barang INT,
	FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id),
	FOREIGN KEY (id_barang) REFERENCES Barang(id)
);