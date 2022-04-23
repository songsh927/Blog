import 'package:flutter/material.dart';

class newArticlePage extends StatelessWidget {
  newArticlePage({Key? key, this.data}) : super(key: key);

  var newArticleTitle = TextEditingController();
  var newArticleText = TextEditingController();
  final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(data.toString()),
      ),
    );
  }
}
