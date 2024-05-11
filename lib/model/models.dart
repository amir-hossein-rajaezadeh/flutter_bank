// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AllModels {
  List<MenuItemModel> getMenuList() {
    final List<MenuItemModel> getMenuList = [
      MenuItemModel("Top Up", Icons.add),
      MenuItemModel("Transfer", Icons.account_balance),
      MenuItemModel("Pay", Icons.arrow_circle_up),
      MenuItemModel("Request", Icons.arrow_circle_down),
      MenuItemModel("HIstory", Icons.list_alt),
    ];
    return getMenuList;
  }
}

class MenuItemModel {
  final IconData icon;
  final String title;
  MenuItemModel(this.title, this.icon);
}

class HistoryItem {
  final String title;
  final String subtitle;
  final String trailing;
  final String leading;

  HistoryItem(
    this.title,
    this.subtitle,
    this.trailing,
    this.leading,
  );
}

final historyItems = [
  HistoryItem('Ralph Edwards', 'Sent  . Feb 09', '\$50.00', 'Sent'),
  HistoryItem('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
  HistoryItem('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
  HistoryItem('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
  HistoryItem('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
  HistoryItem('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
];
