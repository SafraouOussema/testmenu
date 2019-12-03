import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  String route;
  int num ;
  NavigationModel({this.title, this.icon,this.route ,this.num});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Home", icon: Icons.home ,route: "/Home",num: 0),
  NavigationModel(title: "Experience", icon: Icons.access_time,route: "/Experience",num: 1),
  NavigationModel(title: "Portfolio", icon: Icons.apps,route: "/Portfolio",num: 2),
];