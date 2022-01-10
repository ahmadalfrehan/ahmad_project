import 'package:flutter/material.dart';
import 'det.dart';

// ignore_for_file: file_names
class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Roww(context, 'build/assets/q.jpg',
                'product one \n product one  with price 4555', 'this is one'),
            const SizedBox(height: 15),
            Roww(context, 'build/assets/q1.jpg',
                'product two \n product one  with price 4', 'this is two '),
            const SizedBox(height: 15),
            Roww(
                context,
                'build/assets/q2.jpg',
                'product three  \n product one  with price 45',
                'this is three'),
            SizedBox(height: 15),
            Roww(context, 'build/assets/A.png',
                'product four \n product one  with price 0', 'this is four'),
          ],
        ),
      ),
    );
  }

  Row Roww(BuildContext context, String s1, String s2, String s3) {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Image.asset(
          s1,
          height: 100,
          width: 100,
        ),
        SizedBox(
          width: 30,
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Det(s1, s2),
              ),
            );
          },
          child: Text(s3),
        ),
      ],
    );
  }
}
