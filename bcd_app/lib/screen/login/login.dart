import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/repositories/user_repository.dart';
import 'package:bcd_app/screen/login/verify_detail/without_schedule_verify_detail.dart';
import 'package:bcd_app/screen/navigation_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = new TextEditingController(text: "");
  TextEditingController password = new TextEditingController(text: "");
  double _animatedHeight = 0;
  @override
  Widget build(BuildContext context) {
    // final logo = Padding(
    //   padding: EdgeInsets.all(20),
    //   child: Hero(
    //       tag: 'hero',
    //       child: SizedBox(
    //         height: 160,
    //         child: Image.asset('assets/login.jpg'),
    //       )),
    // );

    final inputUsername = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: username,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: password,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
      ),
    );

    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Login',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black87,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () async {
            if (username.text == '' || password.text == '') {
            } else {
              UserRepository userRepo = new UserRepository();
              UserDTO dto = await userRepo.login(username.text, password.text);
              if (dto != null) {
                final prefs = await SharedPreferences.getInstance();
                prefs.setString('jwtToken', dto.jwtToken);
                prefs.setString('userId', dto.userId);
                dto = await userRepo.getUserLogin(dto.jwtToken, dto.userId);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(
                            dto: dto,
                          )),
                );
              } else {
                setState(() {
                  _animatedHeight = 50;
                });
              }
            }
          },
        ),
      ),
    );

    final buttonForgotPassword = FlatButton(
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ForgotPassword()));
      },
    );
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/3.gif"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: <Widget>[
                // logo,
                inputUsername,
                inputPassword,
                buttonLogin,
                buttonForgotPassword,
                AnimatedContainer(
                    height: _animatedHeight,
                    duration: Duration.zero,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    child: Text("Your username or password is incorrect",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ));
  }
}
