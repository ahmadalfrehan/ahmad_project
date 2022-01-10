import 'package:flutter/material.dart';

class Det extends StatelessWidget {
  String s1, s2;
  Det(this.s1, this.s2, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              s1,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(s2),
            ),
          ],
        ),
      ),
    );
  }
}
