import 'package:flutter/material.dart';
import 'package:flutter_docs_example/pages/material_components.dart';
import 'pages/basic_widgets.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/b',
    routes: {
      '/a': (context) => const BasicWidgets(),
      '/b': (context) => const TutorialHome(),
    },
    home: const SafeArea(
      child: BasicWidgets(),
    ),
  ));
}
