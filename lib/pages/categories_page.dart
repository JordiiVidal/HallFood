import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categorias',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _cardAddCategory(context, 'AÑADIR', 1),
                _cardCategory(context, 'VERDURA', 2),
                _cardCategory(context, 'BEBIDA', 1)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardAddCategory(BuildContext context, String text, int type) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          minRadius: 40.0,
          child: Icon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.body1,
        ),
      ],
    );
  }

  Widget _cardCategory(BuildContext context, String text, int type) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.grey[100],
          minRadius: 40.0,
          child: Icon(
            FontAwesomeIcons.hamburger,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.body1,
        ),
      ],
    );
  }
}
