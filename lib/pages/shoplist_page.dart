import 'package:flutter/material.dart';

class ShopListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _backgorund2(context),
        _backgorund(context),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    _cardDay(context, 1),
                    _cardDay(context, 2),
                    _cardCurrentDay(context, 3),
                    _cardDay(context, 4),
                    _cardDay(context, 5),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 455,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(100, (index) {
                      return _cardList(context, index);
                    }),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _backgorund(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 480,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
        ),
      ),
    );
  }

  Widget _backgorund2(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }

  Widget _cardList(BuildContext context, int numero) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Lista $numero',
                style: TextStyle(fontSize: 25.0, color: Colors.grey[400]),
              ),
              Text('Caprabo',
                  style: TextStyle(fontSize: 12.0, color: Color.fromRGBO(85, 84, 89, 1))),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 10.0,
                  ),
                  SizedBox(width: 10.0),
                  CircleAvatar(
                    minRadius: 10.0,
                  ),
                  SizedBox(width: 10.0),
                  CircleAvatar(
                    minRadius: 10.0,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardCurrentDay(BuildContext context, int day) {
    return Container(
      width: 80.0,
      decoration: BoxDecoration(
        color: Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 28.0,
          ),
          Text(
            'Lun',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            day.toString(),
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 28.0,
          )
        ],
      ),
    );
  }

  Widget _cardDay(BuildContext context, int day) {
    return Container(
      width: 60.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Lun',
            style: Theme.of(context).textTheme.body2,
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            day.toString(),
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
