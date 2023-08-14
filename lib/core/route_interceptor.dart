import 'package:flutter/material.dart';

class RouterInterceptor extends RouteInformationParser<Object> {
  final BuildContext context;
  final RouteInformationParser<Object> origin;
  final ValueChanged<String?> onLocationChanged;

  RouterInterceptor(
    this.context, {
    required this.origin,
    required this.onLocationChanged,
  });

  @override
  Future<Object> parseRouteInformation(RouteInformation routeInformation) {
    onLocationChanged(routeInformation.location);

    return origin.parseRouteInformationWithDependencies(routeInformation, context);
  }

  @override
  RouteInformation? restoreRouteInformation(Object configuration) {
    return origin.restoreRouteInformation(configuration);
  }
}
