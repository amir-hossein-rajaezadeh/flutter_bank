import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bank/widgets/transaction_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/models.dart';
import '../utils/my_colors.dart';
import '../utils/my_theme.dart';
import '../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: isDarkModeEnabled(context)
                  ? MyColors.darkBlue
                  : MyColors.lightPurple),
          height: 290.h,
          width: double.infinity,
          child: Stack(children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 35.h, left: 10),
                child: Image.asset(
                  "assets/images/background_pic.png",
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.h, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
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
                                Text("Hi Amir"),
                                Text("Wed, Fe,2024"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ThemeSwitcher(
                        clipper: const ThemeSwitcherCircleClipper(),
                        builder: (context) {
                          return GestureDetector(
                            onTapDown: (details) =>
                                ThemeSwitcher.of(context).changeTheme(
                              theme: ThemeModelInheritedNotifier.of(context)
                                          .theme
                                          .brightness ==
                                      Brightness.light
                                  ? darkTheme
                                  : lightTheme,
                              offset: details.localPosition,
                            ),
                            child: Icon(
                              isDarkModeEnabled(context)
                                  ? Icons.light_mode_rounded
                                  : Icons.dark_mode,
                              color: isDarkModeEnabled(context)
                                  ? Colors.white
                                  : MyColors.grey,
                              size: 22,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20.h),
                            child: const Text(
                              "Balanced",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 23),
                            child: const Text(
                              "1,434.34",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.w800),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24, top: 12.h),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 30,
                          color: isDarkModeEnabled(context)
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: getMenuList().length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final menuItem = getMenuList()[index];

                        return Padding(
                          padding: EdgeInsets.only(
                            top: 16,
                            right: 24.w,
                          ),
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
                                    child: Icon(
                                      menuItem.icon,
                                      size: 26,
                                      color: isDarkModeEnabled(context)
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
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
                ],
              ),
            ),
          ]),
        ),
        Container(
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: isDarkModeEnabled(context)
                ? MyColors.darkBlue
                : MyColors.lightPurple,
          ),
          margin: const EdgeInsets.only(top: 32, right: 24, left: 24),
          child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(right: 15, left: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 85,
                      height: 72,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/invitation.png",
                          ),
                          Positioned(
                            left: 0,
                            bottom: 6,
                            child: Image.asset("assets/images/star.png"),
                          ),
                          Positioned(
                            right: 3,
                            top: 0,
                            child: Image.asset("assets/images/star.png"),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Revval",
                          style: TextStyle(
                              color: isDarkModeEnabled(context)
                                  ? Colors.white
                                  : MyColors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Invite your firends',
                            style: TextStyle(
                                color: isDarkModeEnabled(context)
                                    ? Colors.white
                                    : MyColors.grey,
                                fontSize: 12.spMin),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'to join on \n ZenWallet and get \$15.00',
                                style: TextStyle(
                                  fontSize: 12.spMin,
                                  color: isDarkModeEnabled(context)
                                      ? Colors.white
                                      : MyColors.grey,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color:
                      isDarkModeEnabled(context) ? Colors.white : Colors.black,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 37.h),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Trantions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                "View More",
                style: TextStyle(
                    fontSize: 18,
                    color: MyColors.darkPurple,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 0),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final TransactionModel transactionItem =
                  getTransactionList()[index];
              return buildTransactionItemWidget(transactionItem);
            },
          ),
        ),
      ],
    );
  }
}
