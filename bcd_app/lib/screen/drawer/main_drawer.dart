import 'package:bcd_app/objects/crackDTO.dart';
import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/screen/dialog/confirm_dialog.dart';
import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';
import 'package:bcd_app/screen/tab/schedule/schedule__screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:bcd_app/repositories/crack_repository.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainDrawer extends StatelessWidget {
  final UserDTO dto;
  const MainDrawer({Key key, this.dto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: DEFAULT_COLOR,
                  height: 250,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://voz.vn/data/avatars/o/1674/1674252.jpg?1594502766"),
                                fit: BoxFit.fill,
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              dto.name,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              dto.email,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(LineIcons.home, color: Colors.black54),
                        title: Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(dto: dto)),
                          );
                        },
                      ),
                      ListTile(
                        leading:
                            Icon(LineIcons.mail_forward, color: Colors.black54),
                        title: Text(
                          'Notification',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NotificationScreen(dto: dto)),
                          );
                        },
                      ),
                      ListTile(
                        leading:
                            Icon(LineIcons.building_o, color: Colors.black54),
                        title: Text(
                          'Crack',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CrackScreen(dto: dto)),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          LineIcons.calendar,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Schedule',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScheduleScreen(dto: dto)),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(LineIcons.user, color: Colors.black54),
                        title: Text(
                          'Account',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountScreen(dto: dto)),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.501960813999176,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: const Color(0xffb7b7b7),
                            width: 0.5,
                          ))),
                    ),
                    ListTile(
                      leading: Icon(LineIcons.sign_out, color: Colors.black54),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            child: ConfirmDialog("Logout",
                                "Do you want to log out?", Colors.red));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
