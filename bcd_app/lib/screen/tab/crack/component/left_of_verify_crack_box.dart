import 'package:bcd_app/screen/navigation_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/utils/bcd_utils.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';
import 'left_crack_box_image.dart';
import 'verify_bottom_button.dart';



class LeftOfVerifyCrackBox extends StatelessWidget {
  final Color color;
  final String status;
  LeftOfVerifyCrackBox(this.color, this.status);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -20,
      margin: EdgeInsets.only(left: 10),
      height: 130,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(1, 10), // changes position of shadow
          ),
        ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [HexColor("#ffffff"),color]
          // )
      ),
      child: Row(
        children: [
          Container(height: double.infinity,width: 10,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))

              )
          ),
          LeftCrackBoxImage(),
          VerifyButtonBottom(color,status),
          Container(margin: EdgeInsets.only(left: 10),child:
          IconButton(icon: Icon(Icons.double_arrow_rounded,size: 30,color: Colors.black12,), onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavigationScreen()),
            );
          },))
        ],
      ),
    );
  }
}
