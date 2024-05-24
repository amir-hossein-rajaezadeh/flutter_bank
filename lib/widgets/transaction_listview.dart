import 'package:flutter/widgets.dart';
import '../model/models.dart';
import 'transaction_item.dart';

ListView buildTransactionListView(List<TransactionModel> transactionList) {
  return ListView.separated(
    itemCount: transactionList.length,
    shrinkWrap: true,
    padding: const EdgeInsets.only(top: 0),
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      final TransactionModel transactionItem = transactionList[index];
      return buildTransactionItemWidget(transactionItem);
    },
    separatorBuilder: (context, index) => SizedBox(
      height: index == 0 ? 18 : 18,
    ),
  );
}
