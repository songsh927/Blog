import 'package:flutter/material.dart';

class loginPageDialog extends StatelessWidget {
  const loginPageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        width: 400,
        height: 600,
        color: Colors.grey,
        child: Column(children: [
          Row(children: [Text('ID')]),
          Row(children: [Text('Password')])
        ]),
      ),
    );
  }
}
