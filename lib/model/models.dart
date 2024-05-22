// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

List<MenuModel> getMenuList() {
  final List<MenuModel> getMenuList = [
    MenuModel("Top Up", Icons.add),
    MenuModel("Transfer", Icons.account_balance),
    MenuModel("Pay", Icons.arrow_circle_up),
    MenuModel("Request", Icons.arrow_circle_down),
    MenuModel("HIstory", Icons.list_alt),
  ];
  return getMenuList;
}

List<MenuModel> getCardOptionList() {
  final List<MenuModel> getManageCardList = [
    MenuModel("Manage Payment Method", Icons.settings),
    MenuModel("Show PIN", Icons.password),
    MenuModel("Unblock PIN", Icons.lock_open_sharp),
    MenuModel("Replace Card", Icons.credit_card),
    MenuModel("Card Limit", Icons.speed),
  ];
  return getManageCardList;
}

List<HistoryModel> getHistoryList() {
  final historyList = [
    HistoryModel('Ralph Edwards', 'Sent  . Feb 09', '\$50.00', 'Sent'),
    HistoryModel('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
    HistoryModel('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
    HistoryModel('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
    HistoryModel('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
    HistoryModel('Ralph Edwards', 'Sent Feb 09', '\$50.00', 'Sent'),
  ];
  return historyList;
}

List<CardModel> getCardList() {
  final List<CardModel> cardList = [
    CardModel("Mellat",80, 6059, "12/26", "assets/images/mellat.png", Colors.red),
    CardModel("Master",100, 2012, "11/19", "assets/images/mastercard.png",
        Colors.yellow.shade700),
    CardModel("PayPal",20, 7923, "02/05", "assets/images/paypal.png", Colors.blue),
    CardModel("Visa",270, 9881, "07/22", "assets/images/visa.png", Colors.green),
  ];

  return cardList;
}

List<TransactionModel> getTransactionList() {
  final List<TransactionModel> transactionList = [
    TransactionModel("Sallery", 400, "Feb 10", false),
    TransactionModel("Jouhn", 30, "Mar 03", true),
    TransactionModel("Mother", 120, "Apr 10", true),
    TransactionModel("Anna", 80, "Apr 12", false),
    TransactionModel("Brother", 50, "May 29", true),
    TransactionModel("Jounh", 12, "Jun 02", true),
    TransactionModel("Brother", 90, "Feb 19", true),
    TransactionModel("Max", 70, "Feb 10", true),
    TransactionModel("Max", 70, "Feb 10", false),
    TransactionModel("Anna", 20, "Feb 10", false),
  ];
  return transactionList;
}

class MenuModel {
  final IconData icon;
  final String title;
  MenuModel(this.title, this.icon);
}

class HistoryModel {
  final String title;
  final String subtitle;
  final String trailing;
  final String leading;
  HistoryModel(
    this.title,
    this.subtitle,
    this.trailing,
    this.leading,
  );
}

class CardModel {
  final String bankName;
  final double accountBalance;
  final int lastCardNumber;
  final String expireDate;
  final String bankImage;
  final Color cardColor;

  CardModel(this.bankName,this.accountBalance, this.lastCardNumber, this.expireDate,
      this.bankImage, this.cardColor);
}

class TransactionModel {
  final String title;
  final int price;
  final String date;
  final bool isSent;

  TransactionModel(this.title, this.price, this.date, this.isSent);
}
