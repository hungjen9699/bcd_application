import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final buttonEmailForgotPassword = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Submit',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black87,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ),
    );
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/login.jpg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Forgot Password"),
          ),
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: <Widget>[
                inputEmail,
                buttonEmailForgotPassword,
                Text(
                    "Enter your email and we will send you a link to reset your password")
              ],
            ),
          ),
        ));
  }
}
