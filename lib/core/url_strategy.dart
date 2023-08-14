import 'package:flutter_web_plugins/url_strategy.dart';

void configureWebUrlStrategy() {
  setUrlStrategy(PathUrlStrategy());
}