import "package:flutter/material.dart";
import "../models/candi.dart";

class DetailScreen extends StatelessWidget {
  Candi candi;

  DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            // DetailHeader
            Stack(
              children: [
                Image.asset(candi.imageAsset),
              ],
            ),
            // DetailInfo
            // DetailGallery
          ]
      ),
    );
  }
}