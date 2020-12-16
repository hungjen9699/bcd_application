import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

import 'left_of_not_verify_crack_box.dart';
import 'left_bar.dart';
import 'left_of_verify_crack_box.dart';
class CrackVerifyBox extends StatelessWidget {
  final Color color;
  final String status;

  CrackVerifyBox(this.color, this.status);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            LeftOfVerifyCrackBox(color,status)
          ],
        ));
  }
}
