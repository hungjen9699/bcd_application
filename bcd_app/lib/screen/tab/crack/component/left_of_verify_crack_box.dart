import 'package:bcd_app/screen/navigation_screen.dart';
import 'package:bcd_app/screen/tab/crack/detail_form/crack_detail.dart';
import 'package:bcd_app/screen/tab/crack/component/crack_detail_2.dart';
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
          Container(height: double.infinity,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.designingbuildings.co.uk/w/images/6/6c/Cracking.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),topLeft:Radius.circular(10)),
                      ),
                    ),
                  ),
                ],)
          ),
          VerifyButtonBottom(color,status),
          Container(child:
          IconButton(icon: Icon(Icons.double_arrow_rounded,size: 30,color: color,), onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CrackDetail2(status: status,)),
            );
          },))
        ],
      ),
    );
  }
}
