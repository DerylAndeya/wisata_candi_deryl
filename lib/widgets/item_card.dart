import 'package:wisata_candi/models/candi.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
// TODO: 1. Deklarasikan variable yang dibutuhkan dan pasang pada konstruktor
  ItemCard({super.key, required this.candi});
  final Candi candi;

  @override
  Widget build(BuildContext context) {
// TODO: 6. Implementasi routing ke DetailScreen
    return Card(
// TODO: 2. Tetapkan parameter shape, margin dan elevation dari
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// TODO: 3. Buat Image sebagai anak dari column
          Expanded(
// TODO: 7. Implementasi Hero Animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
// TODO: 4. Buat Text sebagai anak dari column
          Padding(
            padding: const EdgeInsets.only(
              left : 16,
              top : 8,
            ),
            child: Text(
              candi.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
// TODO: 5. Buat Text sebagai anak dari column
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 8,
            ),
            child: Text(
              candi.type,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}