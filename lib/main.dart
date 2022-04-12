import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          topinfobar(),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.dstATop,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.black.withOpacity(0.12),
                  ),
                  child: Row(children: <Widget>[menubar(), article()])))
        ]),
      ),
    );
  }
}

class topinfobar extends StatelessWidget {
  const topinfobar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: SizedBox(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        '송승현',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      )),
                      Expanded(
                          child: Text(
                        'Node.js & Java 주니어 개발자',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                    ],
                  ))),
          Expanded(
              child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 30,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        height: 30,
                        child: Text(
                          'Join',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.flutter_dash_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        '  github.com/songsh927',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.mail_outline_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        '  songsh96927@gmail.com',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class menubar extends StatelessWidget {
  menubar({Key? key}) : super(key: key);
  var scroll = ScrollController();

  var menus = ['Me', 'Java', 'Spring', 'Node.js', 'Flutter', 'Linux'];
  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: ListView.builder(
            itemCount: menus.length,
            controller: scroll,
            itemBuilder: (c, i) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    height: 40,
                    width: 130,
                    child: OutlinedButton(
                      onPressed: () {
                        print(menus[i]);
                      },
                      child: Text(
                        menus[i],
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}

class article extends StatefulWidget {
  article({Key? key}) : super(key: key);

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
  var scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 9,
        fit: FlexFit.tight,
        child: Container(
            //color: Colors.black.withOpacity(0.12),
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.black)),
            ),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (c, i) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          children: [
                            Text(
                              'Node.js singleThread Non-blocking IO',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('2022/02/01')
                          ],
                        ),
                      ),
                    ],
                  );
                })));
  }
}
