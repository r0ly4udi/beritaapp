import 'package:flutter/material.dart';

class DetailKategori extends StatefulWidget {
  final String id;
  final String title;
  final String picture;

  DetailKategori({this.id, this.title, this.picture});

  @override
  _DetailKategoriState createState() => _DetailKategoriState();
}

class _DetailKategoriState extends State<DetailKategori> {
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    final id = routesArgs['id'];
    final title = routesArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text('List Kategori $id dan $title'),
      ),
    );
  }
}
