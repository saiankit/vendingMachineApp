import 'package:flutter/material.dart';
import 'package:vendingMachineApp/widgets/listCardTransactions.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListCardTransaction(
          imageAssetLink: 'assets/beverage.png',
          title: '2 Beverage - 27',
          subTitle: '27 march, 15:27 PM',
          price: 1,
          type: 'Debit',
        ),
        ListCardTransaction(
          imageAssetLink: 'assets/coffee.png',
          title: '3 Coffee - 7',
          subTitle: '15 march, 16:32 PM',
          price: 1,
          type: 'Debit',
        ),
        ListCardTransaction(
          imageAssetLink: 'assets/mix.png',
          title: '1 Mix - E42',
          subTitle: '12 march, 11:03 AM',
          price: 3,
          type: 'Debit',
        ),
        ListCardTransaction(
          imageAssetLink: 'assets/recharge.png',
          title: 'Recharged with Satispay',
          subTitle: '10 march, 10:12 AM',
          price: 20,
          type: 'Credit',
        )
      ],
    );
  }
}
