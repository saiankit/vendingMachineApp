import 'package:flutter/material.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';
import 'package:vendingMachineApp/utilities/themeStyles.dart';

class AvailableMoney extends StatefulWidget {
  @override
  _AvailableMoneyState createState() => _AvailableMoneyState();
}

class _AvailableMoneyState extends State<AvailableMoney> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width - 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [ThemeColors.lightBlue, ThemeColors.darkBlue],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'AVAILABLE',
                    style: ThemeStyles.availableTextStyle,
                  ),
                  Text(
                    '15,00 €',
                    style: ThemeStyles.moneyTextStyle,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 34.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 32.0,
                    width: 88.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Center(
                        child: Text('Recharge',
                            style: ThemeStyles.rechargeTextStyle)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
