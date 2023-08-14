import 'package:flutter/material.dart';

class RouteListener extends RouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    print('previous: $previousRoute --> $route');
  }
}