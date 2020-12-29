import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

import 'left_of_not_verify_crack_box.dart';
import 'left_bar.dart';

class CrackNotVerifyBox extends StatelessWidget {
  final String value;
  CrackNotVerifyBox(this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      
        margin: EdgeInsets.only(left:10,top: 20),
        child: Row(
          children: [

            LeftOfNotVerifyCrackBox()
          ],
        ));
  }
}
