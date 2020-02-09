import 'package:flutter/material.dart';
import 'package:hallfood/widgets/productElement.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              TabBar(
                isScrollable: true,
                labelColor: Color.fromRGBO(85, 84, 89, 1),
                labelStyle:
                    TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
                unselectedLabelStyle:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                unselectedLabelColor: Colors.grey[400],
                indicatorColor: Theme.of(context).accentColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                tabs: [
                  Tab(
                    text: 'Favoritos',
                  ),
                  Tab(
                    text: 'Más comprados',
                  ),
                  Tab(
                    text: 'Recientes',
                  ),
                ],
              ),
              Container(
                height: 600,
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ProductElement(
                            index: index,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ProductElement(
                            index: index,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return ProductElement(
                            index: index,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
