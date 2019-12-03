import 'package:flutter/material.dart';
import 'package:testmenu/ui/home.dart';
import 'package:testmenu/ui/experience.dart';
import 'package:testmenu/ui/portfolio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safraou Oussema',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: <String,WidgetBuilder>{
        '/Home':(BuildContext context)=> new Home(),
        '/Experience':(BuildContext context)=> new Experience(),
        '/Portfolio':(BuildContext context)=> new Portfolio(),
      },
    );
  }
}

