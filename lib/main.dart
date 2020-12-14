import 'package:appberita/berita_screen.dart';
import 'package:appberita/kategori_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BeritaScreen(),
        '/listberita': (BuildContext _) => BeritaScreen(),
        '/listkategori': (BuildContext _) => KategoriScreen(),
      },
    );
  }
}
