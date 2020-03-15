import 'package:fish_redux/fish_redux.dart';
import 'package:fish_reduxTest/page/demo_page/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('main');

    final AbstractRoutes routes =
        PageRoutes(pages: <String, Page<Object, dynamic>>{
      'main_page': DemoPage(),
    });
    return MaterialApp(
      title: "Simple",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: routes.buildPage('main_page', null),
    );
  }
}
