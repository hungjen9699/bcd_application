import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/screen/drawer/main_drawer.dart';

import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'component/avatar_box.dart';
import 'component/select_field.dart';

class AccountScreen extends StatefulWidget {
  final UserDTO dto;

  const AccountScreen({Key key, this.dto}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return AccountScreenState();
  }
}

class AccountScreenState extends State<AccountScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: DEFAULT_COLOR,
            title: Text(
              "Account",
              style: TextStyle(color: Colors.white),
            )),
        drawer: MainDrawer(dto: widget.dto),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    color: DEFAULT_COLOR_2,
                    margin: EdgeInsets.only(bottom: 150),
                  ),
                  SelectField(LineIcons.user, "Profile", widget.dto),
                  SelectField(LineIcons.key, "Change Password", widget.dto),
                  SelectField(
                      LineIcons.question_circle, "Help & Support", widget.dto),
                  SelectField(LineIcons.sign_out, "Logout", widget.dto),
                ],
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 5 - 100,
                  left: 50,
                  right: 50,
                  child: Column(
                    children: [
                      AvatarBox(dto: widget.dto),
                    ],
                  ))
            ],
          ),
        ));
  }
}
