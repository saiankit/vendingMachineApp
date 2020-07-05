import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';
import 'package:vendingMachineApp/utilities/themeStyles.dart';

class ListCardVendings extends StatefulWidget {
  final String imageAssetLink;
  final String title;
  final String subTitle;
  ListCardVendings({this.imageAssetLink, this.title, this.subTitle});
  @override
  _ListCardVendingsState createState() => _ListCardVendingsState();
}

class _ListCardVendingsState extends State<ListCardVendings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        height: 64.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 32.0,
                  width: 32.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: ThemeColors.lightGrey,
                  ),
                  child: Image.asset(
                    widget.imageAssetLink,
                    height: 25.0,
                    width: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12.0),
                  child: Container(
                    height: 40.0,
                    width: 97.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: ThemeStyles.listTitleTextStyle,
                        ),
                        Text(
                          widget.subTitle,
                          style: ThemeStyles.listSubTitleTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24.0,
                top: 15.0,
                bottom: 15.0,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Select',
                    style: ThemeStyles.listSubTitleTextStyle,
                  ),
                  SizedBox(width: 4.0),
                  SvgPicture.asset('assets/arrow-right.svg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
