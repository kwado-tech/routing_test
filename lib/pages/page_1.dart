import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push(GoRouterRoutes.page2.route),
          child: Text('GOTO page ${GoRouterRoutes.page2.route}'),
        ),
      ),
    );
  }
}
