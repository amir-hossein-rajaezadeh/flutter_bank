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
