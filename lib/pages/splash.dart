import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_test/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push(GoRouterRoutes.home.route),
          child: Text('GOTO ${GoRouterRoutes.home.route}'),
        ),
      ),
    );
  }
}
