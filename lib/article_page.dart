import 'package:flutter/material.dart';

class articlePage extends StatelessWidget {
  articlePage({Key? key, this.data}) : super(key: key);

  var scroll = ScrollController();
  final data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(5))),
                            ),
                          ),
                          Center(
                            child: Text(
                              data['catagory'],
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 20,
                      child: Container(
                        height: double.maxFinite,
                        padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          backgroundBlendMode: BlendMode.dstATop,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.black.withOpacity(0.12),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                child: Text(
                                  data['title'],
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Text(
                                  data['text'],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
