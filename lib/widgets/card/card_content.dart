import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';

class CardContent extends StatelessWidget {
  final CardModel cardItem;
  final double deviceWidth;
  const CardContent(
      {super.key, required this.cardItem, required this.deviceWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: cardItem.cardColor),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      cardItem.bankImage,
                      height: 30,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                    const Text(
                      "Debit Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: deviceWidth < 350 ? 10 : 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 7,
                      width: 215,
                      child: ListView.builder(
                        itemCount: 12,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                                right: (index + 1) % 4 == 0 ? 26 : 8),
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        cardItem.lastCardNumber.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.only(right: 20, left: 24, bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${cardItem.accountBalance}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Text(
                        cardItem.expireDate,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
