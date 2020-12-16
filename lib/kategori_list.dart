import 'package:appberita/berita_kategori.dart';
import 'package:flutter/material.dart';

class ListKategori extends StatelessWidget {
  final int id;
  final String title;
  final String picture;
  final String seotitle;

  ListKategori({this.id, this.title, this.picture, this.seotitle});

  void goToNewScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => BeritaKategoriScreen(
            id: id, title: title, seotitle: seotitle, picture: picture),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewScreen(context),
      child: Card(
          child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('$picture'),
        ),
        title: Text("$title"),
        subtitle: Text("Kategori : " + "$seotitle"),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      )),
    );
  }
}
