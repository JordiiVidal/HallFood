import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Tus Contactos',
                  style: Theme.of(context).textTheme.title,
                ),
                Text('20 contactos'),
              ],
            ),
          ),
          Container(
            height: 499,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(),
                  title: Text(
                    'Jordi vidal',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  subtitle: Text('sssss'),
                  trailing: RaisedButton(
                    onPressed: () {},
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    elevation: 1,
                    child: Text('+ Añadir',style: TextStyle(color: Colors.white),),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
