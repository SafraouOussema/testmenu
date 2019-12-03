import 'package:flutter/material.dart';
import 'package:testmenu/custom_navigation_drawer.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              elevation: 0.0,
              backgroundColor: drawerBackgroundColor,
              title: Center(
                child: Text(
                  "Portfolio",
                ),
              )),
          drawer: CollapsingNavigationDrawer(),
          body: new Column(
            children: <Widget>[
              new Text(
                "Portfolio",
                textDirection: TextDirection.ltr,
                style: new TextStyle(color: Colors.deepOrange, fontSize: 24.2),
              ),
            ],
          ),
        ));
  }
}
