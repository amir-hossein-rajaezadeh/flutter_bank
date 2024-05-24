import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';
import '../utils/my_colors.dart';

Widget buildTransactionItemWidget(TransactionModel transactionItem) {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 22),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: MyColors.grey, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Icon(
                    transactionItem.isSent
                        ? Icons.arrow_upward_sharp
                        : Icons.arrow_downward_rounded,
                    size: 26,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionItem.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      transactionItem.isSent ? "Sent" : "Recieved",
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey),
                    ),
                    Text(
                      transactionItem.date,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Text(
          "${transactionItem.price}\$",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        )
      ],
    ),
  );
}
