import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoardsPage extends StatelessWidget {
  const BoardsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'My lists',
                style: Theme.of(context).textTheme.title,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[100]),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(.1),
                      offset: Offset(3.0, 2.0),
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Theme.of(context).primaryColor,
                    size: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: _cardBoard(context, index),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Categories',
                style: Theme.of(context).textTheme.title,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[100]),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(.1),
                      offset: Offset(3.0, 2.0),
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Theme.of(context).primaryColor,
                    size: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 16, right: 2),
                child: _cardCategory(context, index),
              );
            },
          ),
        ),
      ],
    );
  }
}

Widget _cardCategory(BuildContext context, int index) {
  final List<String> _images = [
    'assets/images/category_fruit.png',
    'assets/images/category_desert.png',
    'assets/images/category_drink.png',
    'assets/images/category_extra.png',
    'assets/images/category_fastfood.png',
    'assets/images/category_fish.png',
    'assets/images/category_fruit.png',
    'assets/images/category_meat.png',
    'assets/images/category_pasta.png',
    'assets/images/category_sauce.png',
  ];

  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 130,
      child: Stack(
        children: <Widget>[
          Container(
            width: 120,
            height: 40,
            margin: EdgeInsets.only(top: 15.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(33, 151, 85, 1),
              gradient: LinearGradient(
                colors: _gradients(index),
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 8),
                  blurRadius: 8,
                )
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Fruits',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40,
              width: 40,
              child: Image.asset(_images[index]),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _cardBoard(BuildContext context, int index) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, 'board'),
    child: Hero(
      tag: 'dash_$index',
      child: Material(
        color: Colors.transparent,
        type: MaterialType.transparency,
        child: Container(
            width: 200,
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 18.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: _gradients(index),
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 8),
                  blurRadius: 8,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '10 Productos',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Lista',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Text(
                    'Casa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '35%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}

List<Color> _gradients(index) {
  Color color1;
  Color color2;

  switch (index) {
    case 1:
      color1 = Color.fromRGBO(211, 127, 54, 0.6);
      color2 = Color.fromRGBO(211, 127, 54, 1);
      break;
    case 2:
      color1 = Color.fromRGBO(211, 193, 54, 0.6);
      color2 = Color.fromRGBO(211, 193, 54, 1);
      break;
    case 3:
      color1 = Color.fromRGBO(54, 138, 211, 0.6);
      color2 = Color.fromRGBO(54, 138, 211, 1);
      break;
    case 4:
      color1 = Color.fromRGBO(54, 138, 211, 0.6);
      color2 = Color.fromRGBO(54, 138, 211, 1);
      break;
    default:
      color1 = Color.fromRGBO(52, 211, 121, 0.6);
      color2 = Color.fromRGBO(52, 211, 121, 1);
  }

  return [color1, color2];
}
