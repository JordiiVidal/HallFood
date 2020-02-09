import 'package:flutter/material.dart';
import 'package:hallfood/pages/board_page.dart';
import 'package:hallfood/pages/categories_page.dart';
import 'package:hallfood/pages/home_page.dart';
import 'package:hallfood/pages/list_page.dart';
import 'package:hallfood/pages/product_page.dart';
import 'package:hallfood/pages/products_page.dart';
import 'package:hallfood/pages/shoplist_page.dart';
import 'package:hallfood/utils/utils.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HallFood',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'products': (BuildContext context) => ProductsPage(),
        'categories': (BuildContext context) => CategoriesPage(),
        'shoplist': (BuildContext context) => ShopListPage(),
        'list': (BuildContext context) => ListPage(),
        'product': (BuildContext context) => ProductPage(),
        'board': (BuildContext context) => BoardPage(),
      },
      theme: themePattern(),
    );
  }
}
