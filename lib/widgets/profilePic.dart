import 'package:flutter/material.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';

class ProfilePic extends StatefulWidget {
  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      width: 52.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.pink,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
            image: AssetImage('assets/userImage.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
