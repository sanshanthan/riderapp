import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riderapp/login_page.dart';

class RegisterationScreen extends StatelessWidget {
  const RegisterationScreen({super.key});
  static const String idScreen = "register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 45.0,
            ),
            const Image(
              image: AssetImage("images/logo.png"),
              width: 300.0,
              height: 300.0,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 1.0,
            ),
            const Text(
              "Register as a Rider",
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  SizedBox(
                    height: 1.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            ElevatedButton(
              // color: Colors.yellow,
              // textColor: Colors.white,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Background color
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)),
              ),
              child: const SizedBox(
                height: 50.0,
                child: Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginPage.idScreen, (route) => false);
              },
              child: const Text('Already have an Account? Login Here'),
            ),
          ],
        ),
      )),
    );
  }
}
