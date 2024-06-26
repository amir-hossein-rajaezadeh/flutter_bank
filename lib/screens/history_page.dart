import 'package:flutter/material.dart';
import 'package:flutter_bank/widgets/custom_app_bar.dart';
import 'package:flutter_bank/widgets/transaction_listview.dart';
import '../model/models.dart';
import '../utils/my_colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(vsync: this, length: tabList.length);

  final List<Tab> tabList = [
    const Tab(
      text: "Sent",
    ),
    const Tab(
      text: "Received",
    ),
    const Tab(
      text: "Requests",
    ),
  ];
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabList.length,
        initialIndex: 0,
        child: Column(
          children: [
            buildCustomAppBarWidget("History"),
            Container(
              height: 45,
              margin: const EdgeInsets.only(right: 25, left: 25, top: 20),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey),
              ),
              child: TabBar(
                tabs: tabList,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: const EdgeInsets.all(4),
                indicator: const BoxDecoration(
                  color: MyColors.darkPurple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: MyColors.grey,
                labelStyle: const TextStyle(fontWeight: FontWeight.w700),
                unselectedLabelStyle: const TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    buildTransactionListView(
                      getTransactionList()
                          .where((element) => element.isSent)
                          .toList(),
                    ),
                    buildTransactionListView(getTransactionList()
                        .where((element) => !element.isSent)
                        .toList()),
                    buildTransactionListView(
                      getTransactionList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
