import 'package:flutter/material.dart';

class FabShopping extends StatefulWidget {
  @override
  _FabShoppingState createState() => _FabShoppingState();
}

class _FabShoppingState extends State<FabShopping>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isTapped = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 100).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushReplacementNamed(context, 'list');
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return !_isTapped
        ? FloatingActionButton(
            elevation: 5,
            onPressed: () {},
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  if (!_isTapped) {
                    _isTapped = true;
                    _scaleController.forward();
                  }
                });
              },
            ),
          )
        : AnimatedBuilder(
            animation: _scaleController,
            builder: (context, build) => Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    shape: BoxShape.circle),
              ),
            ),
          );
  }
}
