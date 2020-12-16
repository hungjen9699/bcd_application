import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

class SelectField extends StatelessWidget {
  final IconData icon;
  final String value;
  SelectField(this.icon, this.value);
  @override
  Widget build(BuildContext context) {
    return  Container(
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
            Container(
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

          ],
        ));
  }
}
