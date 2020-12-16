import 'package:flutter/material.dart';

class BeritaKategoriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    final id = routesArgs['id'];
    final title = routesArgs['title'];

    // final beritaList = ListData.fromJson ((berita) {
    //   return berita.category == id;
    // }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Berita $id" + title),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     //LOAD COMPONENT LISTPLACE DENGAN MENGIRIMKAN DATA YANG AKAN DITAMPILKAN
      //     // return ListBerita(
      //     //   beritaList[index].id.toString(),
      //     //   beritaList[index].title,
      //     //   beritaList[index].picture,
      //     //   beritaList[index].content,
      //     // );
      //   },
      //   itemCount: beritaList.length, //TOTAL DATA YANG AKAN LOOPING
      // ),
    );
  }
}
