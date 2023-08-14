import 'package:go_router/go_router.dart';
import 'package:routing_test/pages/home.dart';
import 'package:routing_test/pages/page_1.dart';
import 'package:routing_test/pages/page_2.dart';
import 'package:routing_test/pages/page_3.dart';
import 'package:routing_test/pages/page_4.dart';
import 'package:routing_test/pages/splash.dart';

class NavPath {
  final String path;
  final String route;

  const NavPath({required this.path, required this.route});
}

class GoRouterRoutes {
  static NavPath get home => const NavPath(path: '/home', route: '/home');
  static NavPath get page1 =>
      NavPath(path: 'page1', route: '${home.path}/page1');
  static NavPath get page2 =>
      NavPath(path: 'page2', route: '${home.path}/page2');
  static NavPath get page3 =>
      NavPath(path: 'page3', route: '${home.path}/page3');
  static NavPath get page4 =>
      NavPath(path: 'page4', route: '${home.path}/page4');
}

GoRouter createAppRouter({String? initialLocation}) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: GoRouterRoutes.home.path,
        builder: (context, state) => const MyHomePage(),
        routes: [
          GoRoute(
            path: GoRouterRoutes.page1.path,
            builder: (context, state) => const Page1(),
          ),
          GoRoute(
            path: GoRouterRoutes.page2.path,
            builder: (context, state) => const Page2(),
          ),
          GoRoute(
            path: GoRouterRoutes.page3.path,
            builder: (context, state) => const Page3(),
          ),
          GoRoute(
            path: GoRouterRoutes.page4.path,
            builder: (context, state) => const Page4(),
          ),
        ],
      ),
    ],
  );
}
