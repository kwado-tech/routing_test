import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push(GoRouterRoutes.page3.route),
          child: Text('GOTO page ${GoRouterRoutes.page3.route}'),
        ),
      ),
    );
  }
}
