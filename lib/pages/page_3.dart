import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push(GoRouterRoutes.page4.route),
          child: Text('GOTO Page ${GoRouterRoutes.page4.route}'),
        ),
      ),
    );
  }
}
