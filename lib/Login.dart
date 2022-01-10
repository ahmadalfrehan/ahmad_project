// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:plp0/Product1.dart';
import 'package:plp0/SignUp.dart';
import 'F.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  String? sss = "build/assets/U.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(sss!),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          sss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          sss = "build/assets/U.jpg";
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      onTap: () {
                        setState(() {
                          sss = "build/assets/BG.jpg";
                        });
                      },
                      onEditingComplete: () {
                        setState(() {
                          sss = "build/assets/U.jpg";
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                      controller: passController,
                      keyboardType: TextInputType.text,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      showAboutDialog(
                        context: context,
                        applicationName: "Ahmad Alfrehan",
                        children: [
                          const Text("Relax And Try to Remember the password"),
                        ],
                      );
                    },
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 230,
                        ),
                        Text(
                          "Forgot password ?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          builder: (context) => const Products(),
                        ),
                      );
                    },
                    child: const Text(
                      "Log in",
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
                      elevation: 55,
                      shape: const StadiumBorder(side: BorderSide()),
                      fixedSize: const Size(360, 45),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign Up",
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
