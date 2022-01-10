// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:plp0/Product.dart';

import 'MyProfile.dart';

class Add extends StatelessWidget {
  Add({Key? key, required this.Addd}) : super(key: key);
  var Des = TextEditingController();
  var prc = TextEditingController();
  var name = TextEditingController();
  List<Product>? Addd = [];
  void as(String des, String name, String price) {
    Addd!.add(
      Product(
        des: des,
        id: 1,
        name: name,
        price: price,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black54,
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(30),
            elevation: 55,
            shape: Border.all(width: 12),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '       Enter the name        ',
                  ),
                  controller: name,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: '       Enter the description       ',
                  ),
                  controller: Des,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '        Enter the price       ',
                  ),
                  controller: prc,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfile()));
                    as(Des.text, name.text, prc.text);
                  },
                  child: const Text("Save the product ?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
