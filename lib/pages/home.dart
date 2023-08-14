import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push(GoRouterRoutes.page1.route),
          child: Text('GOTO page ${GoRouterRoutes.page1.route}'),
        ),
      ),
    );
  }
}
