import 'package:flutter/material.dart';
import 'package:flutter_first/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.namaMakanan),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                makanan.gambarPath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              makanan.namaMakanan,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            Text(
              "Harga: " +makanan.harga,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),

            Text(
              "Rating: ${makanan.rating}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),

            Text(
              "Review:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              makanan.review,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 12),

            Text(
              "Deskripsi:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              makanan.deskripsi, // <-- Pastikan baris ini ada!
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}