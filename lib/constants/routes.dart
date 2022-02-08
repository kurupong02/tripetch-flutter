import 'package:flutter/material.dart';
import 'package:tripetch/ui/detail_screen.dart';
import 'package:tripetch/ui/home_screen.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String detail = '/detail';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomeScreen(),
    detail: (BuildContext context) => const DetailScreen(),
  };
}
