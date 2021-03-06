import 'package:flutter/material.dart';
import 'package:appberita/models/berita.dart';
import 'package:dio/dio.dart';
import 'package:appberita/detail_screen.dart';

class BeritaScreen extends StatefulWidget {
  @override
  _BeritaScreenState createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  Future<ListData> listData;
  // Future<Category> listCategory;

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
  void initState() {
    super.initState();
    listData = getListData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("List Berita")),
      ),
      body: FutureBuilder<ListData>(
          future: listData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              title: "${snapshot.data.data[index].title}",
                              content: "${snapshot.data.data[index].content}",
                              picture: "${snapshot.data.data[index].picture}",
                              category:
                                  "${snapshot.data.data[index].category.title}"))),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            '${snapshot.data.data[index].picture}'),
                      ),
                      title: Text("${snapshot.data.data[index].title}"),
                      subtitle: Text("Kategori : " +
                          "${snapshot.data.data[index].category.title}"),
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
