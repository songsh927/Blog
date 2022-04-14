import 'dart:convert';

import 'package:flutter/material.dart';
import 'topinfobar.dart';
import 'bottom_article.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (c) => changePageStore()),
  ], child: MyApp()));
}

class changePageStore extends ChangeNotifier {
  sideMenuBarOnpressed(catagory) {}
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SongSH`s Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        constraints: BoxConstraints(minWidth: 400),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(children: <Widget>[
          topinfoBar(),
          Expanded(
            child: bottomArticlePage(),
          )
        ]),
      ),
    );
  }
}
