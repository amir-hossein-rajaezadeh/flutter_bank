import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';

int selectedBankIndex = 0;

class BuildBankListModel extends StatefulWidget {
  const BuildBankListModel({super.key});

  int returnSelectedIndex() {
    return selectedBankIndex;
  }

  @override
  State<BuildBankListModel> createState() => _BuildBankListModelState();
}

class _BuildBankListModelState extends State<BuildBankListModel> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Choose Your Bank Card",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      content: SizedBox(
        height: 190,
        width: 300,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: getCardList().length,
          itemBuilder: (context, index) {
            final bankItem = getCardList()[index];

            final itemIsSelected = selectedBankIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedBankIndex = index;
                });
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          bankItem.bankImage,
                          width: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${bankItem.bankName} Card",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(bankItem.expireDate)
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: itemIsSelected ? Colors.blue : Colors.grey,
                            width: 1.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            color: itemIsSelected
                                ? Colors.blue
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          duration: const Duration(milliseconds: 250),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text(
            "OK",
            textAlign: TextAlign.right,
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
