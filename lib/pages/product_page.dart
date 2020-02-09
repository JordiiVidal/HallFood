import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hallfood/widgets/heartProduct.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pan Bimbo',
          style: Theme.of(context).textTheme.subtitle,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          HeartProduct(),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 10.0,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Hero(
                          tag: 'image_1',
                          child: Container(
                            height: 50,
                              child: Image.asset(
                                  'assets/images/category_sauce.png'))),
                      minRadius: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Panaderia',
                          style: Theme.of(context).textTheme.body1,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10.0),
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Theme.of(context).accentColor),
                                child: Text(
                                  'Editar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15.0)),
                                width: 100,
                                child: Text(
                                  'Eliminar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  width: 400,
                  height: 55,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
                        child: Column(
                          children: <Widget>[
                            Text(
                              '4,50€',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(85, 84, 89, 1)),
                            ),
                            Text(
                              'Precio',
                              style: Theme.of(context).textTheme.body2,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
