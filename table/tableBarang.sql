create table Barang (
	id INT PRIMARY KEY NOT NULL auto_increment,
	nama_barang VARCHAR(300) NOT NULL,
	harga DECIMAL(10,2) NOT NULL,
	stok INT,
	id_kategories int (5),
	FOREIGN KEY (id_kategori) REFERENCES  Kategori(id)
);