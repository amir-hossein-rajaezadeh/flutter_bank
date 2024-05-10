import 'package:go_router/go_router.dart';

import '../screens/main_page.dart';

class MyRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const MainPage(),
      ),
    ],
  );
}
