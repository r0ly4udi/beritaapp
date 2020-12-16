import 'package:flutter/material.dart';

class IconMenu extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {'image': 'iconmenu/date.png', 'text': 'Action'},
    {'image': 'iconmenu/list.png', 'text': 'List'},
    {'image': 'iconmenu/tambah.png', 'text': 'Tambah'},
    {'image': 'iconmenu/user.png', 'text': 'User'},
    {'image': 'iconmenu/user.png', 'text': 'User'},
    {'image': 'iconmenu/date.png', 'text': 'Action'},
    {'image': 'iconmenu/list.png', 'text': 'List'},
    {'image': 'iconmenu/tambah.png', 'text': 'Tambah'},
    {'image': 'iconmenu/user.png', 'text': 'User'},
    {'image': 'iconmenu/user.png', 'text': 'User'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
          crossAxisCount: 5,
          children: List.generate(menuItems.length, (index) {
            return Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  //boxdecoration widget yang berguna utk membuat lingkaran
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      border: Border.all(color: Colors.grey[300])),
                  child: Center(
                    child: Image.asset(menuItems[index]['image']),
                  ),
                ),
                //expanded widget adalah widget yg mengisi ruangan kosong
                Expanded(
                  child: Text(
                    menuItems[index]['text'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ],
            );
          })),
    );
  }
}
