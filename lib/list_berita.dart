import 'package:flutter/material.dart';

class ListBerita extends StatelessWidget {
  final String id;
  final String title;
  final String picture;
  final String content;

  ListBerita(this.id, this.title, this.picture, this.content);

  void goToDetail(BuildContext context) {
    Navigator.of(context).pushNamed('/detail', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: ListTile(
          leading: Image.network(picture),
          title: Text(title),
          subtitle: Text(content.substring(0, 100) + '...'),
          onTap: () => goToDetail(context),
        ),
      ),
    );
  }
}
