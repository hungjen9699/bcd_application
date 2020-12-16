import 'package:bcd_app/screen/drawer/main_drawer.dart';
import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/calendardemo.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';
import 'package:bcd_app/screen/tab/schedule/schedule__screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'component/avatar_box.dart';
import 'component/select_field.dart';


class AccountScreen extends StatefulWidget {
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
        appBar: AppBar(backgroundColor:DEFAULT_COLOR,title: Text("Account",style: TextStyle(color: Colors.white),)),
        drawer: MainDrawer(),

        body:Container(
          height: MediaQuery.of(context).size.height ,
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
                  SelectField(LineIcons.user, "Profile"),
                  SelectField(LineIcons.chain, "Setting"),
                  SelectField(LineIcons.phone, "Contact"),
                  SelectField(LineIcons.sign_out, "Logout"),

                ],
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 5 - 100,
                  left: 50,
                  right: 50,
                  child: Column(
                    children: [
                      AvatarBox(),
                    ],
                  ))
            ],
          ),
        )

    );
  }
}