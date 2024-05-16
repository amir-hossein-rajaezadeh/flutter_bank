import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bank/screens/cards_page.dart';
import 'package:flutter_bank/screens/home_page.dart';
import 'package:flutter_bank/screens/payment_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.home,
        size: 26,
      ),
    ),
    const Tab(
      icon: Icon(Icons.wallet, size: 26),
    ),
    const Tab(
      icon: Icon(CupertinoIcons.chart_bar_alt_fill, size: 26),
    ),
    const Tab(
      icon: Icon(CupertinoIcons.person_circle_fill, size: 26),
    )
  ];

  late final TabController _tabController =
      TabController(vsync: this, length: myTabs.length);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        body: DefaultTabController(
          initialIndex: 0,
          length: myTabs.length,
          child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const <Widget>[
                      HomePage(),
                      CardsPage(),
                      PaymentPage(),
                      Center(
                        child: Text(
                          "Profile Screen",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: TabBar(
                      enableFeedback: true,
                      tabs: myTabs,
                      controller: _tabController,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
