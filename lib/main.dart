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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(children: <Widget>[
          topinfobar(),
          Expanded(
              child: Row(
            children: <Widget>[menubar(), article()],
          ))
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
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      width: double.infinity,
      height: 180,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '송승현',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'Node.js & Java 주니어 개발자',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )),
          SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 30,
                      child: Text(
                        'Login',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: Text(
                        'Join',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Column(children: [
                        Text(
                          'github.com/songsh927',
                          style: TextStyle(fontSize: 20),
                        )
                      ]),
                    ),
                    SizedBox(
                        height: 40,
                        child: Column(
                          children: [
                            Text(
                              'songsh96927@gmail.com',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          )
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
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(5),
                    child: Text(menus[i]),
                  )
                ],
              );
            }));
  }
}

class article extends StatelessWidget {
  article({Key? key}) : super(key: key);
  var scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 8,
      fit: FlexFit.tight,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.black))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'Node.js Non-Blocking System IO',
                    style: TextStyle(fontSize: 30),
                  )),
              Expanded(
                  flex: 6,
                  child: Text(
                      'Node.js는 싱글쓰레드 Non-Blocking IO 시스템을 사용하는 자바스크립트 런타임 환경이다.',
                      style: TextStyle(fontSize: 15))),
              Expanded(
                  flex: 3, child: Text('댓글', style: TextStyle(fontSize: 15)))
            ],
          )),
    );
  }
}
