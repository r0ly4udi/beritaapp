import 'package:appberita/widgets/icon_menu.dart';
import 'package:flutter/material.dart';

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
