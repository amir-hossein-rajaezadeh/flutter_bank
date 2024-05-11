import 'package:flutter_bank/screens/history_page.dart';
import 'package:flutter_bank/screens/payment_page.dart';
import 'package:go_router/go_router.dart';

import '../screens/main_page.dart';

class MyRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: "/historyPage",
        builder: (context, state) => const HistoryPage(),
      ),
      GoRoute(
        path: "/paymentPage",
        builder: (context, state) => const PaymentPage(),
      ),
      GoRoute(
        path: "/topuptPage",
        builder: (context, state) => const PaymentPage(),
      )
    ],
  );
}
