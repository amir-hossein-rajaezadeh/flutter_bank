import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';
import 'package:flutter_bank/utils/my_colors.dart';
import 'package:flutter_bank/widgets/custom_app_bar.dart';
import 'package:flutter_bank/widgets/show_model.dart';

import '../utils/utils.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedBankIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bankItem = getCardList()[selectedBankIndex];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCustomAppBarWidget("Pay"),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Enter your amount below',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 180,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            prefix: Text(
                              "\$",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  color: Colors.black),
                            ),
                            hintText: "amount",
                            hintStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                            hintFadeDuration: Duration(milliseconds: 600),
                            contentPadding: EdgeInsets.only(left: 50),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 22),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Select top up method",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: GestureDetector(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const BuildBankListModel();
                                },
                              );
                              setState(() {
                                selectedBankIndex = const BuildBankListModel()
                                    .returnSelectedIndex();
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(bankItem.bankImage),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        bankItem.bankName,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          text: "Card balance: ",
                                          style: TextStyle(
                                              color: isDarkModeEnabled(context)
                                                  ? Colors.grey
                                                  : MyColors.grey
                                                      .withOpacity(0.8),
                                              fontSize: 12),
                                          children: <InlineSpan>[
                                            TextSpan(
                                              text:
                                                  " \$${bankItem.accountBalance}",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color:
                                                    isDarkModeEnabled(context)
                                                        ? Colors.white
                                                        : Colors.grey.shade700,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: const ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: MyColors.lightPurple,
                                    ),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: MyColors.darkPurple,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.darkPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      minimumSize: const Size(double.infinity, 50.0),
                    ),
                    child: const Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
