import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';
import 'package:vendingMachineApp/utilities/themeStyles.dart';
import 'package:vendingMachineApp/widgets/profilePic.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              ProfilePic(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('WELCOME', style: ThemeStyles.welcomeTextStyle),
                    Text('Federica', style: ThemeStyles.userNameTextStyle),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset(
                  'assets/more-horizontal.svg',
                  color: ThemeColors.grey,
                ),
                onPressed: null,
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/bell.svg',
                      color: ThemeColors.darkBlue,
                    ),
                    onPressed: null,
                  ),
                  Positioned(
                    left: 20.0,
                    top: 4.0,
                    child: SvgPicture.asset('assets/badge.svg'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
