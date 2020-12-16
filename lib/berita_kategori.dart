import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'list_berita.dart';
import 'models/berita.dart';

class BeritaKategoriScreen extends StatelessWidget {
  final int id;
  final String title;
  final String picture;
  final String seotitle;

  BeritaKategoriScreen({this.id, this.title, this.picture, this.seotitle});
  Future<List<Data>> getListData() async {
    //fetch data dari api
    var dio = Dio();
    Response response = await dio.get('http://demo.pewarna.id/api/v1/post');
    //print(response.data);
    if (response.statusCode == 200) {
       final beritaList = <Data>[];
   var  listData=  ListData.fromJson(response.data);
      beritaList.addAll(
        listData.data.where((element) {
          return element.category.id == id || element.category.title == title;
        }),
      );
      return beritaList;
    } else {
      throw Exception('Failed to load Post');
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita $id" + title),
      ),
      body:FutureBuilder<List<Data>>(
          future: getListData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              title: "${snapshot.data[index].title}",
                              content: "${snapshot.data[index].content}",
                              picture: "${snapshot.data[index].picture}",
                              category:
                                  "${snapshot.data[index].category.title}"))),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            '${snapshot.data[index].picture}'),
                      ),
                      title: Text("${snapshot.data[index].title}"),
                      subtitle: Text("Kategori : " +
                          "${snapshot.data[index].category.title}"),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ));
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
