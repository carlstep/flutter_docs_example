import 'package:flutter/material.dart';
import 'pages/basic_widgets.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/a': (context) => const BasicWidgets(),
    },
    home: const SafeArea(
      child: BasicWidgets(),
    ),
  ));
}
