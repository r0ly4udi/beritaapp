// import 'package:appberita/berita_kategori.dart';
import 'package:appberita/berita_kategori.dart';
import 'package:appberita/berita_screen.dart';
import 'package:appberita/home_screen.dart';
import 'package:appberita/kategori_list.dart';
import 'package:appberita/kategori_screen.dart';
import 'package:appberita/postbykat_screen.dart';
// import 'package:appberita/kategori_screen.dart';
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
        '/': (context) => HomeScreen(),
        '/listberita': (BuildContext _) => BeritaScreen(),
        '/listkategori': (BuildContext _) => ListKategori(),
        '/kategori': (BuildContext _) => KategoriScreen(),
        '/postbykatscreen': (BuildContext _) => PostByKatScreen(),
        '/beritakategori': (BuildContext _) => BeritaKategoriScreen(),

        // '/berita': (BuildContext _) => BeritaKategoriScreen(),
      },
    );
  }
}
