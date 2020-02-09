import 'package:flutter/material.dart';
import 'package:hallfood/pages/boards_page.dart';
import 'package:hallfood/pages/contacts_page.dart';
import 'package:hallfood/pages/products_page.dart';
import 'package:hallfood/widgets/custom/titledBottomNavigationBar.dart';
import 'package:hallfood/widgets/custom/titledNavigationBarItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('Hall'),
            Text(
              'Food',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 15.0,
            ),
          )
        ],
      ),
      body: Stack(children: <Widget>[
        _loadPage(_currentIndex),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            color: Colors.red,
            child: TitledBottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  TitledNavigationBarItem(
                    title: 'Products',
                    icon: Icons.fastfood,
                  ),
                  TitledNavigationBarItem(
                    title: 'Home',
                    icon: Icons.home,
                  ),
                  TitledNavigationBarItem(
                    title: 'Contacts',
                    icon: Icons.supervised_user_circle,
                  ),
                ]),
          ),
        )
      ]),
    );
  }

  Widget _loadPage(int actualPage) {
    switch (actualPage) {
      case 0:
        return ProductsPage();
      case 1:
        return BoardsPage();
      case 2:
        return ContactsPage();
      default:
        return ProductsPage();
    }
  }
}
