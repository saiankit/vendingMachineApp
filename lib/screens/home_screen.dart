import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vendingMachineApp/components/appBar.dart';
import 'package:vendingMachineApp/components/availableMoney.dart';
import 'package:vendingMachineApp/components/tabs.dart';
import 'package:vendingMachineApp/screens/transactions.dart';
import 'package:vendingMachineApp/screens/vendings.dart';
import 'package:vendingMachineApp/services/state_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ChangeNotifierProvider(
          create: (_) => AppState(),
          child: Consumer<AppState>(
            builder: (context, appState, _) => Column(
              children: <Widget>[
                Appbar(),
                AvailableMoney(),
                Tabs(),
                Provider.of<AppState>(context).selectedWidgetMarker ==
                        WidgetMarker.vendings
                    ? Vendings()
                    : Transactions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
