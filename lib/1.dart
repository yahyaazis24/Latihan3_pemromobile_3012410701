import 'package:flutter/material.dart';

class Latihan1Beranda extends StatelessWidget {
  const Latihan1Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Latihan1Tentang()),
            );
          },
          child: const Text('Halaman Tentang'),
        ),
      ),
    );
  }
}

class Latihan1Tentang extends StatelessWidget {
  const Latihan1Tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Kembali ke Beranda'),
        ),
      ),
    );
  }
}