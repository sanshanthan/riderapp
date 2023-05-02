import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 45.0,
          ),
          const Image(
            image: AssetImage("images/logo.png"),
            width: 350.0,
            height: 350.0,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            "Login as a Rider",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 1.0,
                ),
                const TextField(
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
            child: const SizedBox(
              height: 50.0,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
