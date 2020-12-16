import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'list_berita.dart';
import 'models/berita.dart';

class BeritaKategoriScreen extends StatelessWidget {
  final String id;
  final String title;
  final String picture;
  final String seotitle;

  BeritaKategoriScreen({this.id, this.title, this.picture, this.seotitle});
  Future<ListData> getListData() async {
    //fetch data dari api
    var dio = Dio();
    Response response = await dio.get('http://demo.pewarna.id/api/v1/post');
    //print(response.data);
    if (response.statusCode == 200) {
      return ListData.fromJson(response.data);
    } else {
      throw Exception('Failed to load Post');
    }
  }

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    final id = routesArgs['id'];
    final title = routesArgs['title'];

    final beritaList = [];
    getListData().then((listData) {
      beritaList.addAll(listData.data.where((element) =>
          element.category.id == id || element.category.title == title));
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita $id" + title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          //LOAD COMPONENT LISTPLACE DENGAN MENGIRIMKAN DATA YANG AKAN DITAMPILKAN
          return ListBerita(
            beritaList[index].id.toString(),
            beritaList[index].title,
            beritaList[index].picture,
            beritaList[index].content,
          );
        },
        itemCount: beritaList.length, //TOTAL DATA YANG AKAN LOOPING
      ),
    );
  }
}
