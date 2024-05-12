import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bank/utils/my_colors.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Card',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter ',
              color: MyColors.black),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 270,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                _buildCardWidget(0),
                Positioned(
                  top: 70,
                  child: _buildCardWidget(1),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            height: 265,
            child: ListView(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: MyColors.grey),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: MyColors.darkPurple,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  title: const Text(
                    'Manage Payment Method',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter ',
                        color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: MyColors.black,
                  ),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColors.grey)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.lock_open,
                        color: MyColors.darkPurple,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  title: const Text(
                    'Unblock PIN',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter ',
                        color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: MyColors.black,
                  ),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColors.grey)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.credit_card,
                        color: MyColors.darkPurple,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  title: const Text(
                    'Replace Card',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter ',
                        color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: MyColors.black,
                  ),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: MyColors.grey)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.speed,
                        color: MyColors.darkPurple,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  title: const Text(
                    'Card Limit',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter ',
                        color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: MyColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _buildCardWidget(int num) {
    return SizedBox(
      width: 400,
      height: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 6),
                borderRadius: BorderRadius.circular(30),
                color: num == 0 ? MyColors.darkPurple : Colors.green),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/visa.png"),
                    const Text(
                      "Debit Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 30),
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
                      child: const Text(
                        "6453",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "80.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        "12/26",
                        style: TextStyle(
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
