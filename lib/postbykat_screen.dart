import 'package:appberita/models/postbykat.dart';
import 'package:flutter/material.dart';

class PostByKatScreen extends StatefulWidget {
  @override
  _PostByKatScreenState createState() => _PostByKatScreenState();
}

class _PostByKatScreenState extends State<PostByKatScreen> {
  List<PostByKat> displayedPostByKat = [];

  _PostByKatScreenState({this.displayedPostByKat});

  @override
  void initState() {
    super.initState();
    displayedPostByKat = List<PostByKat>(); //Ini Model Item nya
  }

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    // String id = routeArgs['id'].toString();

    final id = routesArgs['id'];
    final title = routesArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text('List Kategori $id dan $title'),
      ),
      body: ListView(
        children: [ListTile(title: Text("Percoabaan"))],
      ),
    );
  }
}
