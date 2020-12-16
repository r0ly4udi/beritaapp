import 'package:appberita/widgets/icon_menu.dart';
import 'package:flutter/material.dart';
//import 'package:wartanasrani_app/screen/contact_screen.dart';
//import 'package:wartanasrani_app/screen/heroku.dart';
// import 'package:wartanasrani_app/widget/grey_area.dart';
// import 'package:wartanasrani_app/widget/icon_menu.dart';
// import 'package:wartanasrani_app/widget/image_carousel.dart';
// import 'package:wartanasrani_app/widget/image_menu.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [IconMenu()],
      ),
    );
  }
}
