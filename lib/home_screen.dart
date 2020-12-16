import 'package:appberita/berita_kategori.dart';
import 'package:appberita/home_menu.dart';
import 'package:appberita/kategori_screen.dart';
import 'package:flutter/material.dart';
import 'package:appberita/home_controller.dart';

import 'berita_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends HomeController {
  List<Map<String, Object>> _pages;
  int _selectedItemIndex = 0;
  @override
  void initState() {
    _pages = [
      {
        'page': HomeMenu(),
        'title': 'Warta Nasrani App',
      },
      {
        'page': BeritaScreen(),
        'title': 'Event',
      },
      {
        'page': KategoriScreen(),
        'title': 'Kategori',
      },
      {
        'page': BeritaKategoriScreen(),
        'title': 'Kategori',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedItemIndex]['title'],
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0, Text('Home')),
          buildNavBarItem(Icons.contact_page, 1, Text('apa')),
          buildNavBarItem(Icons.event, 2, Text('Akun')),
          buildNavBarItem(Icons.new_releases, 3, Text('Akun')),
          buildNavBarItem(Icons.contacts, 4, Text('Kontak')),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("roly_audi@gmail.com"),
              accountName: Text("WartaNasrani App"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new NetworkImage(
                          "http://ichef.bbci.co.uk/images/ic/1600xn/p03gywjs.jpg"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20.0),
              ),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/listberita'),
              title: Text("List Berita", style: TextStyle(fontSize: 20.0)),
              leading: CircleAvatar(
                child: Icon(Icons.event_available_rounded),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kategori'),
              title: Text("Berita Terbaru", style: TextStyle(fontSize: 20.0)),
              leading: CircleAvatar(
                child: Icon(Icons.list),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () =>
                  Navigator.of(context).pushNamed('/beritakategoriscreen'),
              title: Text("Berita Kategori", style: TextStyle(fontSize: 20.0)),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/url'),
              title: Text("Sosial Media", style: TextStyle(fontSize: 20.0)),
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
            ),
            Divider(),
            // ListTile(
            //   onTap: () => Navigator.of(context).pushNamed('/home'),
            //   title: Text("Menu", style: TextStyle(fontSize: 20.0)),
            //   leading: CircleAvatar(
            //     child: Icon(Icons.verified_user),
            //   ),
            // ),
            Divider(),
            ListTile(
              onTap: () => Navigator.pop(context),
              title: Text("Tutup", style: TextStyle(fontSize: 16.0)),
              leading: CircleAvatar(
                child: Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedItemIndex]['page'],
      // ListView(
      //   children: [
      //     imageCarousel,
      //     greyArea,
      //     mainMenuList,
      //     imageMenuList,
      //   ],
      // ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, Text text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 5, color: Colors.black)),
                // gradient: LinearGradient(colors: [
                //   Colors.green.withOpacity(0.3),
                //   Colors.green.withOpacity(0.015),
                // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                //color: index == _selectedItemIndex ? Colors.green : Colors.white),
                )
            : BoxDecoration(),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.black : Colors.grey),
      ),
    );
  }
}

// List<String> imagePromo = [
//   'imageposter/bakso.jpeg',
//   'imageposter/iklan.jpg',
//   'imageposter/siomat.jpeg',
// ];

// import 'package:flutter/material.dart';
// import './detail.dart';

// void main(){
//   runApp(new MaterialApp(
//     title: "Sidebar",
//     home: new Home(),
//   ));
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => new _HomeState();
// }

// class _HomeState extends State<Home> {

// String gambar1="http://idrcorner.com/images/icon/gw.jpg";
// String gambar2="https://inspired.disney.co.uk/wp-content/uploads/2017/04/disneyinspired-potc-quiz-v02-660x660-1.jpg";
// String backup;

// String nama1="Indra Armaulana";
// String nama2="Jack Sparrow";
// String backupnama;

// void gantiuser(){
//   this.setState((){
//     backup=gambar1;
//     gambar1=gambar2;
//     gambar2=backup;

//     backupnama=nama1;
//     nama1=nama2;
//     nama2=backupnama;
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(title: new Text("Demo Sidebar (DRAWER)"),backgroundColor: Colors.red[700],),
//       drawer: new Drawer(
//         child: new ListView(
//           children: <Widget>[

//             new UserAccountsDrawerHeader(
//               accountName: new Text(nama1),
//               accountEmail: new Text("idrcorner@gmail.com"),
//               currentAccountPicture:
//               new GestureDetector(
//                   onTap: (){
//                     Navigator.of(context).pop();
//                      Navigator.of(context).push(new MaterialPageRoute(
//                     builder: (BuildContext context)=> new Detail(nama: nama1, gambar: gambar1,)
//                   ));
//                   },
//                   child: new CircleAvatar(
//                   backgroundImage: new NetworkImage(gambar1),
//                 ),
//               ),
//               decoration:  new BoxDecoration(
//                 image: new DecorationImage(image: new NetworkImage("http://ichef.bbci.co.uk/images/ic/1600xn/p03gywjs.jpg"),
//                 fit: BoxFit.cover
//                 )
//               ),
//               otherAccountsPictures: <Widget>[

//                 new GestureDetector(
//                   onTap: ()=> gantiuser(),
//                    child:   new CircleAvatar( backgroundImage: new NetworkImage(gambar2),)

//                 )

//                  ],
//             ),
//             new ListTile(
//               title: new Text("Setting"),
//               trailing: new Icon(Icons.settings),
//             ),
//             new ListTile(
//               title: new Text("Close"),
//               trailing: new Icon(Icons.close)
//             ),
//           ],
//         ),
//       ),
//       body:new Center(
//           child: new Image(
//             image: new NetworkImage("http://idrcorner.com/assets/nn/imgs/logo.png",),width: 450.0,
//           ),
//       ),
//     );
//   }
// }
