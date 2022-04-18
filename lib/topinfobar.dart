import 'package:blog/loginPageDialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class topinfoBar extends StatelessWidget {
  const topinfoBar({Key? key}) : super(key: key);

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
                    children: [
                      SizedBox(
                          width: 70,
                          height: 30,
                          child: SizedBox(
                            width: 70,
                            height: 30,
                            child: TextButton(
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.right,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return loginPageDialog();
                                    });
                              },
                            ),
                          )),
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
                      GestureDetector(
                        child: Text(
                          '  github.com/songsh927',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onTap: () {
                          launch('https://github.com/songsh927');
                        },
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
