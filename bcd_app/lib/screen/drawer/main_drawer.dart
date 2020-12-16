import 'package:bcd_app/screen/tab/account/account_screen.dart';
import 'package:bcd_app/screen/tab/crack/crack_screen.dart';
import 'package:bcd_app/screen/tab/home/home_screen.dart';
import 'package:bcd_app/screen/tab/notification/notification_screen.dart';
import 'package:bcd_app/screen/tab/schedule/schedule__screen.dart';
import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
child: Stack(children: [
  Container(
    color: Color.fromRGBO(37, 49, 61, 1),
    child:
    Column(children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        color:  DEFAULT_COLOR
        ,
        height: 250,
        child: Center(
          child: Column(
            children: [Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage("https://voz.vn/data/avatars/o/1674/1674252.jpg?1594502766")
                    ,fit: BoxFit.fill,
                  )
              ),
            ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child:  Text(
                    'Tran Hoang Dung',
                    style: TextStyle(fontFamily: 'Montserrat',fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),

                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child:  Text(
                    'dunghgBCD@gmail.com',
                    style: TextStyle(fontFamily: 'Montserrat',fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white),

                  )
              )
            ],
          ),
        ),

      ),
      Container(
        color: Color(0xFFB1F2B36),
        width: double.infinity,
        child: Column(children: [
          ListTile(
            leading: Icon(LineIcons.home,color: Colors.white),
            title: Text(
              'Home',
              style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),

            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(LineIcons.mail_forward,color: Colors.white),
            title: Text(
              'Notification',
              style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(LineIcons.building_o,color: Colors.white),
            title: Text(
              'Crack',
              style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),

            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CrackScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(LineIcons.calendar,color: Colors.white,),
            title: Text(
              'Schedule',
              style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),

            ),
            onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleScreen()),
                );
            },
          ),
          ListTile(
            leading: Icon(LineIcons.user,color: Colors.white),
            title: Text(
              'Account',
              style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),

            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );
            },
          ),

        ],),
      ),
    ],),),
  Positioned(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 50,
        color:  Color(0xFFB1F2B36),
        child: ListTile(
          leading: Icon(LineIcons.sign_out,color: Colors.white),
          title: Text(
            'Logout',
            style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),

          ),
          onTap: null,
        ),
      ),
    ),
  )
],)
   ,

    );
  }
}
