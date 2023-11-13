import "package:flutter/material.dart";
import "package:wisata_candi/data/candi_data.dart";

class extends StatefulWidget {
  const ({super.key});

  @override
  State<> HomeState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // TODO: 1. Buat appbar dengan judul Wisata Candi
    appBar: AppBar(title: Text("Wisata Candi")),
    // TODO: 2. Body dengan GridView.builder
    body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
),
        padding: EdgeInsets.all(8.0),
        itemCount: candiList.length,
        itemBuilder: context, index) {
      Candi candi = candiList[index];
      return ItemCard(candi: candi);

})
    // TODO: 3. Buat ItemCard sebagai return dari GridView.builder
    );
  }
}
