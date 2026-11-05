import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';
import 'bonus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Navigasi Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenu(),
        '/latihan1_beranda': (context) => const Latihan1Beranda(),

        // --- 3 Halaman Named Routes Khusus Latihan 3 ---
        '/latihan3_beranda': (context) => const Latihan3Beranda(), // Halaman 1
        '/latihan3_profil': (context) => const Latihan3Profil(),   // Halaman 2
        '/latihan3_detail': (context) => const Latihan3Detail(),   // Halaman 3
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Navigasi & Routing'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Latihan1Beranda()),
              );
            },
            child: const Text('Latihan 1: push & pop'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Latihan2DaftarProduk()),
              );
            },
            child: const Text('Latihan 2: Kirim Data (Daftar & Detail Produk)'),
          ),
          const SizedBox(height: 12),

          // Tombol Latihan 3 sekarang mengarahkan ke Beranda Latihan 3 dulu
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/latihan3_beranda');
            },
            child: const Text('Latihan 3: Named Routes dengan Argumen (3 Halaman)'),
          ),

          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BonusBottomNav()),
              );
            },
            child: const Text('Bonus: BottomNavigationBar (3 Tab)'),
          ),
        ],
      ),
    );
  }
}