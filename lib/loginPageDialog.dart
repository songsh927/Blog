import 'package:flutter/material.dart';

class loginPageDialog extends StatelessWidget {
  loginPageDialog({Key? key}) : super(key: key);

  var inputID = TextEditingController();
  var inputPW = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 500,
        height: 300,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),
                width: double.maxFinite,
                child: Row(children: [
                  SizedBox(width: 100, child: Text('ID')),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: inputID,
                    ),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),
                width: double.maxFinite,
                child: Row(children: [
                  SizedBox(width: 100, child: Text('Password')),
                  SizedBox(
                      width: 300,
                      child: TextField(
                        controller: inputPW,
                      ))
                ]),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 150,
                          height: 50,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('확인'))),
                      SizedBox(
                          width: 150,
                          height: 50,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('취소'))),
                      SizedBox(
                          width: 150,
                          height: 50,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('회원가입'))),
                    ]),
              )
            ]),
      ),
    );
  }
}
