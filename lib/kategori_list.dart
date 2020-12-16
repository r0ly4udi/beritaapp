import 'package:flutter/material.dart';

class ListKategori extends StatelessWidget {
  final String id;
  final String title;
  final String picture;
  final String seotitle;

  ListKategori({this.id, this.title, this.picture, this.seotitle});

  //METHOD INI AKAN BERJALAN KETIKA TOMBOL KATEGORI DI TAP (KLIK)
  void goToNewScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/beritakategori', arguments: {
      // 'id': id,
      // 'title': title,
      // 'seotitle': seotitle,
      // 'picture': picture
    });
    //FUNGSI NAVIGASINYA AKAN ADA DISINI TAPI AKAN DIBAHAS KEMUDIAN JADI TOLONG DIINGAT
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewScreen(context),
      child: Card(
          child: ListTile(
        // onTap: () {
        //   debugPrint('${snapshot.data.data[index].id}');
        //   Navigator.of(context).pushNamed(
        //     '/postbykatscreen',
        //     arguments: {
        //       'id': snapshot.data.data[index].id,
        //       'title': snapshot.data.data[index].title
        //     },
        //   );
        // },
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

// class ListKategori extends StatefulWidget {
//   @override
//   _ListKategoriState createState() => _ListKategoriState();
// }

// class _ListKategoriState extends State<ListKategori> {
//   @override
//   Widget build(BuildContext context) {
//     final routesArgs =
//         ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

//     final id = routesArgs['id'];
//     final title = routesArgs['title'];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List Kategori $id dan $title'),
//       ),
//     );
//   }
// }
