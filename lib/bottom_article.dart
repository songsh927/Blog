import 'dart:convert';

import 'package:blog/article_page.dart';
import 'package:blog/new_article.dart';
import 'package:flutter/material.dart';

class bottomArticlePage extends StatefulWidget {
  const bottomArticlePage({Key? key}) : super(key: key);

  @override
  _bottomArticlePageState createState() => _bottomArticlePageState();
}

class _bottomArticlePageState extends State<bottomArticlePage> {
  var menus = ['Me', 'Java', 'Spring', 'Node.js', 'Flutter', 'Linux'];
  var data = [
    [
      {
        'id': '0',
        'catagory': 'About',
        'title': 'About Me',
        'text': '주로 Node개발합니다 \n Java Spring 공부중이구요 \n Flutter는 취미로 개발합니다.\n'
      }
    ],
    [
      {
        'id': '1',
        'catagory': 'Java',
        'title': 'Java!',
        'text':
            '자바(Java)는 C언어에 객체 지향적 기능을 추가하여 만든 C++과는 달리, 처음부터 객체 지향 언어로 개발된 프로그래밍 언어입니다.\n자바는 자바 가상 머신(JVM, Java Virtual Machine)을 사용하여, 운영체제와는 독립적으로 동작할 수 있습니다\n따라서 자바는 어느 운영체제에서나 같은 형태로 실행될 수 있습니다.\n바로 이러한 점이 수많은 개발자로 하여금 자바를 사용하게 하는 원동력이 되고 있습니다.\n현재 자바는 전 세계에서 가장 많이 사용하는 프로그래밍 언어 중 하나입니다.'
      },
      {
        'id': '6',
        'catagory': 'Java',
        'title': 'About java',
        'text': 'Hello! Java!'
      },
      {'id': '7', 'catagory': 'Java', 'title': 'ORM', 'text': 'Hello! Java!'},
      {'id': '8', 'catagory': 'Java', 'title': 'JPA', 'text': 'Hello! Java!'},
    ],
    [
      {
        'id': '2',
        'catagory': 'Spring',
        'title': 'Spring!',
        'text': 'Hello! Spring!'
      }
    ],
    [
      {
        'id': '3',
        'catagory': 'Node.js',
        'title': 'Node.js!',
        'text': 'Hello! Node.js!'
      }
    ],
    [
      {
        'id': '4',
        'catagory': 'Flutter',
        'title': 'Flutter!',
        'text': 'Hello! Flutter!'
      }
    ],
    [
      {
        'id': '5',
        'catagory': 'Linux',
        'title': 'Linux!',
        'text': 'Hello! Linux!'
      },
      {'id': '9', 'catagory': 'Linux', 'title': 'Bash!', 'text': 'Bash Script!'}
    ]
  ];
  var articles = [];
  var scroll = ScrollController();

  @override
  void initState() {
    articles.add(data[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => newArticlePage(data: data)));
          },
        ),
        body: Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.dstATop,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.black.withOpacity(0.12),
            ),
            child: Row(children: <Widget>[
              ////////////////////
              /// Side Menu Bar///
              ////////////////////
              Flexible(
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
                                  setState(() {
                                    articles.clear();
                                    articles.add(data[i]);
                                  });
                                },
                                child: Text(
                                  menus[i],
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        );
                      })),
              ////////////////////////
              /// Main Article Page///
              ////////////////////////
              Flexible(
                  flex: 9,
                  fit: FlexFit.tight,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color: Colors.black)),
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (c, i) {
                          return Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey),
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  var data = articles[0][i];
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              articlePage(data: data))));
                                },
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      articles[0][i]['title'],
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    //미리보기 텍스트
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueGrey),
                                ),
                              ));
                        },
                        itemCount: articles[0].length,
                      )))
            ])));
  }
}
