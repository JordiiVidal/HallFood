import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartProduct extends StatefulWidget {
  @override
  _HeartProductState createState() => _HeartProductState();
}

class _HeartProductState extends State<HeartProduct> {
  int _favButton = 0;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
         _favButton = (_favButton == 1) ? 0 : 1; 
        });
      },
      icon: Icon((_favButton == 0) ? FontAwesomeIcons.heart : FontAwesomeIcons.solidHeart, size: 27.0, color: (_favButton == 1) ? Colors.red : Colors.grey[600],),
    );
  }
}
