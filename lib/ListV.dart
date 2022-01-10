// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'Add.dart';
import 'Product.dart';

class ListV extends StatefulWidget {
  const ListV({Key? key}) : super(key: key);

  @override
  _ListVState createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Card(
                      child: Image.asset(
                        "build/assets/A.png",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Column(
                      children: const [
                        Text("this is the name of product"),
                        SizedBox(
                          height: 15,
                        ),
                        const Text("this is the description of product"),
                      ],
                    ),
                    Card(
                      child: Image.asset(
                        "build/assets/A.png",
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Column(
                      children: const [
                        Text("this is the name of product"),
                        SizedBox(
                          height: 15,
                        ),
                        const Text("this is the description of product"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Add(
                Addd: [],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
