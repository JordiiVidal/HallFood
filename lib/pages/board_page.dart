import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 35.0),
              decoration: BoxDecoration(color: Theme.of(context).accentColor),
              height: 180,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                      Text(
                        'Nombre',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8.0,
                                color: Colors.black.withOpacity(.1),
                                offset: Offset(-2.0, -2.0),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '20',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Productos',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(59, 62, 69, 1),
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8.0,
                                color: Colors.black.withOpacity(.1),
                                offset: Offset(-2.0, -2.0),
                              ),
                            ],
                          ),
                          width: 150,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Miembros',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 8.0,
              margin: EdgeInsets.only(bottom: 30.0),
              color: Colors.grey[100],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Miembros',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: 'dash_0',
                  child: Container(
                    width: 80,
                    padding: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(.1),
                          offset: Offset(6.0, 7.0),
                        ),
                      ],
                    ),
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 220,
                  padding: EdgeInsets.only(left: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(59, 62, 69, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(.1),
                        offset: Offset(6.0, 7.0),
                      ),
                    ],
                  ),
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: CircleAvatar(
                          radius: 20.0,
                          child: Text('JV'),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Container(
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 40.0),
              color: Colors.grey[100],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Productos',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 321,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemCount: 14,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.longArrowAltUp,
                      color: Theme.of(context).accentColor,
                    ),
                    title: Text(
                      'Nombre Producto',
                      style: TextStyle(
                          color: Color.fromRGBO(85, 84, 89, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Panaderia',
                      style: TextStyle(
                          color: Color.fromRGBO(85, 84, 89, 1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Container(
                      width: 120,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20.0,
                          ),
                          CircleAvatar(
                            child: Text('JV'),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Jordi',
                            style: TextStyle(fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
