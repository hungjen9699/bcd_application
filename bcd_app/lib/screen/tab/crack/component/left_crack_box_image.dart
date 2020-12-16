import 'package:bcd_app/utils/flutter_constant.dart';
import 'package:flutter/material.dart';

class LeftCrackBoxImage extends StatelessWidget {
  LeftCrackBoxImage();
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 100,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xff7e7e7e), width: 0.2),
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.designingbuildings.co.uk/w/images/6/6c/Cracking.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
