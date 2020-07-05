import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendingMachineApp/services/state_tab.dart';
import 'package:vendingMachineApp/utilities/themeColors.dart';
import 'package:vendingMachineApp/utilities/themeStyles.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppState>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 25.0, bottom: 15.0),
      child: Container(
        height: 25.0,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                provider.changeToVendings();
              },
              child: Column(
                children: <Widget>[
                  Text(
                    'Vending',
                    style: provider.isSelectedVendings
                        ? ThemeStyles.activeTab
                        : ThemeStyles.inactiveTab,
                  ),
                  SizedBox(height: 4.0),
                  Container(
                    width: 60.0,
                    height: 2.0,
                    color: provider.isSelectedVendings
                        ? ThemeColors.darkBlue
                        : Colors.transparent,
                  )
                ],
              ),
            ),
            SizedBox(width: 15.0),
            GestureDetector(
              onTap: () {
                provider.changeToTransactions();
              },
              child: Column(
                children: <Widget>[
                  Text(
                    'Transactions',
                    style: provider.isSelectedTransactions
                        ? ThemeStyles.activeTab
                        : ThemeStyles.inactiveTab,
                  ),
                  SizedBox(height: 4.0),
                  Container(
                    width: 60.0,
                    height: 2.0,
                    color: provider.isSelectedTransactions
                        ? ThemeColors.darkBlue
                        : Colors.transparent,
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
