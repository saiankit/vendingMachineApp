import 'package:flutter/material.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';
import 'package:vendingMachineApp/utilities/themeStyles.dart';

class ListCardTransaction extends StatefulWidget {
  final String imageAssetLink;
  final String title;
  final String subTitle;
  final String type;
  final int price;
  ListCardTransaction(
      {this.imageAssetLink, this.price, this.subTitle, this.title, this.type});
  @override
  _ListCardTransactionState createState() => _ListCardTransactionState();
}

class _ListCardTransactionState extends State<ListCardTransaction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.title,
                            style: ThemeStyles.listTitleTextStyle),
                        Text(widget.subTitle,
                            style: ThemeStyles.listSubTitleTextStyle)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                widget.type == 'Credit'
                    ? Text(
                        '+',
                        style:
                            TextStyle(color: Color(0xFF4CD964), fontSize: 20.0),
                      )
                    : Text(
                        '-',
                        style:
                            TextStyle(color: Color(0xFFFF3B30), fontSize: 20.0),
                      ),
                Text(widget.price.toString(),
                    style: ThemeStyles.listTitleTextStyle),
                Text(',00 €', style: ThemeStyles.listTitleTextStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
