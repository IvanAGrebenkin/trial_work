import 'package:flutter/material.dart';

import '../Utils/widgets.dart';

class PassArgumentsScreen extends StatefulWidget {
  const PassArgumentsScreen({Key? key}) : super(key: key);

  @override
  State<PassArgumentsScreen> createState() => _PassArgumentsScreenState();
}

class _PassArgumentsScreenState extends State<PassArgumentsScreen> {
  get pageName => 'Страница для передачи аргумента';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBarPassArgumentsScreen(context, pageName),
        drawer: navDrawer(context),
        body: Column(),
      ),
    );
  }
}
