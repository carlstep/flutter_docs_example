import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold();
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'navigation menu',
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Basic Widgets',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .headline6,
            ),
          ),
          const Expanded(
              child: Center(
            child: Text(
              'hello world',
              textDirection: TextDirection.ltr,
            ),
          ))
        ],
      ),
    );
  }
}
