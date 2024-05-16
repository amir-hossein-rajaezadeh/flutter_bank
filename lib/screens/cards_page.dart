import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bank/utils/my_colors.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> with TickerProviderStateMixin {
  double heughtt = 200;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.2, 0.0),
  ).animate(_controller);
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
            height: 255,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SlideTransition(
                  position: _offsetAnimation,
                  child: GestureDetector(
                    onTap: () {
                      _controller.forward();
                      _controller.addStatusListener((status) {
                        if (status == AnimationStatus.completed) {
                          print("ffgfg $_offsetAnimation");
                          setState(
                            () {
                              _offsetAnimation = Tween<Offset>(
                                begin: const Offset(1.2, 0),
                                end: const Offset(0, 0.4),
                              ).animate(_controller);
                            },
                          );
                          _controller
                            ..reset()
                            ..forward();
                          if (status == AnimationStatus.completed) {
                          } else {
                            _controller.stop();
                          }
                        }
                      });
                    },
                    child: _buildCardWidget(0),
                  ),
                ),
                Positioned(
                  top: 55,
                  child: GestureDetector(
                    onTap: () {},
                    child: _buildCardWidget(1),
                  ),
                ),
                // Positioned(
                //   top: 120,
                //   child: Listener(
                //     onPointerMove: (event) {
                //       setState(() {
                //         heughtt = 200 - event.localPosition.dy;
                //       });
                //     },
                //     child: _buildCardWidget(
                //       2,
                //     ),
                //   ),
                // ),
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

  AnimatedContainer _buildCardWidget(int num) {
    return AnimatedContainer(
      alignment: Alignment.topCenter,
      duration: const Duration(milliseconds: 700),
      width: 400,
      height: num == 2 ? heughtt : 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 6),
                borderRadius: BorderRadius.circular(30),
                color: num == 0
                    ? MyColors.darkPurple
                    : num == 1
                        ? Colors.green
                        : Colors.blue),
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
