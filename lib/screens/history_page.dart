import 'package:flutter/material.dart';
import 'package:flutter_bank/utils/my_colors.dart';
import 'package:flutter_bank/widgets/tabbar_widget.dart';

import '../model/models.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "History",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
            ),
            child: TabBar(
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              //dividerColor: Colors.transparent,
              indicator: const BoxDecoration(
                color: MyColors.darkPurple,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black54,
              tabs: const [
                TabItem(title: 'Sent'),
                TabItem(title: 'Received'),
                TabItem(title: 'Accepted'),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: getHistoryList().length,
            itemBuilder: (context, index) {
              final historyItem = getHistoryList()[index];
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: MyColors.grey)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_upward,
                      color: MyColors.darkPurple,
                    ),
                    onPressed: () {},
                  ),
                ),
                title: Text(
                  historyItem.title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter'),
                ),
                subtitle: Text(historyItem.subtitle),
                trailing: Text(
                  historyItem.trailing,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
// 