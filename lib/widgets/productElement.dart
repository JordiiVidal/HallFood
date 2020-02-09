import 'package:flutter/material.dart';

class ProductElement extends StatelessWidget {
  final int index;
  const ProductElement({@required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[100], blurRadius: 6.0, offset: Offset(3, 6))
        ],
      ),
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, 'product'),
        leading: Hero(
          tag: 'image_$index',
          child: Container(
            height: 40.0,
            width: 40.0,
            child: Image.asset(
              'assets/images/category_sauce.png',
            ),
          ),
        ),
        title: Text(
          'Pan Bimbo',
          style:
              TextStyle(color: Color.fromRGBO(85, 84, 89, 1), fontSize: 13.0),
        ),
        subtitle: Text(
          'Panaderia',
          style: TextStyle(fontSize: 12.0),
        ),
        trailing: Icon(Icons.shopping_cart),
      ),
    );
  }
}
