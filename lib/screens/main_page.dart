import 'package:flutter/material.dart';
import 'package:flutter_bank/model/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/my_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: MyColors.pink,
            ),
            height: 285.h,
            width: double.infinity,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 10),
                child: Image.asset(
                  "assets/images/background_pic.png",
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/profile.jpeg"),
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -1.5),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 18),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hi Ariba"),
                              Text("Wed, Fe,2024"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: const Icon(Icons.notifications),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Balance",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 23),
                        child: const Text(
                          " \$1,434.34",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 24, top: 12),
                    child: const Icon(
                      Icons.remove_red_eye_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: AllModels().getMenuList().length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final menuItem = AllModels().getMenuList()[index];

                    return Padding(
                      padding: EdgeInsets.only(
                          top: 16, right: 24.w, left: index == 0 ? 19.w : 0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 48.h,
                            width: 48.w,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Icon(menuItem.icon),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 8,
                            ),
                            child: Text(
                              menuItem.title,
                              style: const TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyColors.pink),
                margin: const EdgeInsets.only(top: 32, right: 24, left: 24),
                child: Container(
                  child: const Row(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
