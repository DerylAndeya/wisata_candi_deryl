import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang
  // pada konstruktor
    ItemCard({super.key, required this.candi});
    final Candi candi;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      //TODO: 2. Tetapkan parameter shape, margin, dan elevation
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO: 3. Buat Image sebagai anak dari Column
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
          child: Image.asset(candi.imageAsset,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          //TODO: 4. Buat Text sebagai anak dari Column
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    bottom: 8,
                  ),
                ),
          Text(
              candi.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          //TODO: 5. Buat Image sebagai anak dari Column
          Text(candi.type),
          )
          )],
      ),
    );
  }
}