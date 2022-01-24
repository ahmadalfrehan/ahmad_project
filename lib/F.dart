// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:plp0/Login.dart';
import 'package:plp0/SignUp.dart';

class F extends StatelessWidget {
  const F({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("build/assets/V.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 1),
            Row(
              children: const [
                SizedBox(
                  width: 12,
                ),
                Text(
                  '     Programming_Language',
                  style:
                      TextStyle(height: 5, fontSize: 25, color: Colors.white),
                ),
              ],
            ),
            const Text(
              ' Welcome!  \n if you have an account press Login Button \n and if you have not an account press SignUp Button ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 55,
                shape: const StadiumBorder(),
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
                  color: Colors.blueAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(
                  255,
                  55,
                  100,
                  200,
                ),
                elevation: 55,
                shape: const StadiumBorder(
                    side: BorderSide(
                  color: Colors.white,
                )),
                fixedSize: const Size(360, 45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
