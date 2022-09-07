import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Key,
        MaterialApp,
        StatelessWidget,
        ThemeData,
        Widget,
        runApp;
import 'package:flutter_cubit/pages/NavPages/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage());
  }
}
