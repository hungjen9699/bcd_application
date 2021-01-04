import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/screen/dialog/confirm_dialog.dart';
import 'package:bcd_app/screen/tab/account/component/profile_screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

import 'change_password.dart';

class SelectField extends StatelessWidget {
  final UserDTO dto;
  final IconData icon;
  final String value;
  SelectField(this.icon, this.value, this.dto);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Container(
              child: CircleAvatar(
                backgroundColor: DEFAULT_COLOR,
                radius: 25,
                child: IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.zero,
                  icon: Icon(icon),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (value == "Logout") {
                  showDialog(
                      context: context,
                      child: ConfirmDialog(
                          "Logout", "Do you want to log out?", Colors.red));
                } else if (value == "Profile") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(
                          status: null,
                          dto: dto,
                        ),
                      ));
                } else if (value == "Change Password") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePassword(
                          status: null,
                          dto: dto,
                        ),
                      ));
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: 50),
                child: Text(
                  value,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
            )
          ],
        ));
  }
}
