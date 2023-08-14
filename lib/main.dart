import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';
import 'package:routing_test/core/initial_link.dart';
import 'package:routing_test/core/route_interceptor.dart';
import 'package:routing_test/core/url_strategy.dart';

void main() {
  configureWebUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(const MyApp());
}

GoRouter? appRouter;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    appRouter ??= createAppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationProvider: appRouter!.routeInformationProvider,
      routeInformationParser: RouterInterceptor(
        context,
        origin: appRouter!.routeInformationParser,
        onLocationChanged: InitialLink.override,
      ),
      routerDelegate: appRouter!.routerDelegate,
    );
  }
}
