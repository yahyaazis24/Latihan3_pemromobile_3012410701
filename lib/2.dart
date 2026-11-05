import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final int harga;

  const Produk(this.nama, this.harga);
}

class Latihan2DaftarProduk extends StatelessWidget {
  const Latihan2DaftarProduk({super.key});

  final List<Produk> daftarProduk = const [
    Produk('Laptop', 20000000),
    Produk('Smartphone', 2000000),
    Produk('smartwatch', 200000),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan 2 - Daftar Produk')),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          final produk = daftarProduk[index];
          return ListTile(
            title: Text(produk.nama),
            subtitle: Text('Rp ${produk.harga}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Latihan2DetailProduk(produk: produk),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Latihan2DetailProduk extends StatelessWidget {
  final Produk produk;

  const Latihan2DetailProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produk.nama)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              produk.nama,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Harga: Rp ${produk.harga}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}