import 'package:flutter/material.dart';

class AllModels {
  List<MenuItemModel> getMenuList() {
    final List<MenuItemModel> getMenuList = [
      MenuItemModel("Top Up", Icons.home),
      MenuItemModel("Transfer", Icons.home),
      MenuItemModel("Pay", Icons.home),
      MenuItemModel("Request", Icons.home),
      MenuItemModel("HIstory", Icons.home),
    ];
    return getMenuList;
  }
}

class MenuItemModel {
  final IconData icon;
  final String title;
  MenuItemModel(this.title, this.icon);
}
