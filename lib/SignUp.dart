// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:plp0/ListV.dart';
import 'package:plp0/Login.dart';
import 'package:plp0/Product.dart';

import 'Product1.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var FirstNameController = TextEditingController();
  var SecondNameController = TextEditingController();
  var SecondPassController = TextEditingController();
  String? ss = "build/assets/U1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ss!),
            fit: BoxFit.fill,
            scale: 44,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          ss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          ss = "build/assets/U1.jpg";
                        });
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.insert_emoticon),
                          border: UnderlineInputBorder(),
                          labelText: 'Name'),
                      controller: FirstNameController,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'the name must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          ss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          ss = "build/assets/U1.jpg";
                        });
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your Email'),
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'email must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          ss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          ss = "build/assets/U1.jpg";
                        });
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key),
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your first password'),
                      controller: passController,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'first passowrd must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          ss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          ss = "build/assets/U1.jpg";
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                      controller: SecondPassController,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      elevation: 55,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(360, 45),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListV(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                      '\n ---------------------------------  or  -------------------------------------\n'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 550,
                      shape: const StadiumBorder(side: BorderSide()),
                      fixedSize: const Size(360, 45),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
