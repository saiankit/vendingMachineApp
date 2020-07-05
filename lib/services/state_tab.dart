import 'package:flutter/material.dart';

enum WidgetMarker { vendings, transactions }

class AppState extends ChangeNotifier {
  WidgetMarker selectedWidgetMarker = WidgetMarker.vendings;
  bool isSelectedTransactions = false;
  bool isSelectedVendings = true;

  void changeToTransactions() {
    this.selectedWidgetMarker = WidgetMarker.transactions;
    this.isSelectedTransactions = true;
    this.isSelectedVendings = false;
    notifyListeners();
  }

  void changeToVendings() {
    this.selectedWidgetMarker = WidgetMarker.vendings;
    this.isSelectedTransactions = false;
    this.isSelectedVendings = true;
    notifyListeners();
  }
}
