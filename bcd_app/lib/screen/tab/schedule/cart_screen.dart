import 'package:bcd_app/screen/tab/crack/component/left_of_not_verify_crack_box.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';


class CartScreenTab extends StatelessWidget {
  final Color color;
  final String value;
  CartScreenTab(this.color, this.value);
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
