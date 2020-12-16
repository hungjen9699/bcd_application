import 'package:bcd_app/utils/bcd_utils.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'left_crack_box_image.dart';
import 'not_verify_bottom_button.dart';



class LeftOfNotVerifyCrackBox extends StatelessWidget {
  LeftOfNotVerifyCrackBox();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -20,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(1, 10), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //         colors: [HexColor("#ffffff"),Color.fromRGBO(37, 49, 61, 1)]
      // )
      ),
      child: Row(
        children: [

          LeftCrackBoxImage(),
          NotVerifyBottomButton(),
        ],
      ),
    );
  }
}
