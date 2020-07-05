import 'package:flutter/material.dart';
import 'package:vendingMachineApp/widgets/listCardVendings.dart';

class Vendings extends StatefulWidget {
  @override
  _VendingsState createState() => _VendingsState();
}

class _VendingsState extends State<Vendings> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListCardVendings(
          imageAssetLink: 'assets/mix.png',
          title: '1 Mix',
          subTitle: 'Snack, Beverage',
        ),
        ListCardVendings(
          imageAssetLink: 'assets/beverage.png',
          title: '2 Beverage',
          subTitle: 'Beverage',
        ),
        ListCardVendings(
          imageAssetLink: 'assets/coffee.png',
          title: '3 Coffee',
          subTitle: 'Warm Beverage',
        ),
      ],
    );
  }
}
