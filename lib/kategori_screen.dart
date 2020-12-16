// import 'package:appberita/detailkategori_screen.dart';
import 'package:appberita/kategori_list.dart';
import 'package:flutter/material.dart';
import 'package:appberita/models/kategori.dart';
import 'package:dio/dio.dart';

class KategoriScreen extends StatefulWidget {
  @override
  _KategoriScreenState createState() => _KategoriScreenState();
}

class _KategoriScreenState extends State<KategoriScreen> {
  Future<ListCategory> listCategory;
  // Future<Category> listCategory;

  Future<ListCategory> getListCategory() async {
    //fetch data dari api
    var dio = Dio();
    Response response = await dio.get('http://demo.pewarna.id/api/v1/category');
    //print(response.data);
    if (response.statusCode == 200) {
      return ListCategory.fromJson(response.data);
    } else {
      throw Exception('Failed to load Category');
    }
  }

  @override
  void initState() {
    super.initState();
    listCategory = getListCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("List Kategori")),
      ),
      body: FutureBuilder<ListCategory>(
          future: listCategory,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (context, index) {
                    return ListKategori(
                        id: snapshot.data.data[index].id.toString(),
                        title: snapshot.data.data[index].title,
                        seotitle: snapshot.data.data[index].seotitle,
                        picture: snapshot.data.data[index].picture);
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
