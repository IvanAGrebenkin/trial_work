import 'package:flutter/material.dart';
import 'package:trial_work/Utils/widgets.dart';

import '../Utils/themes.dart';

class FlutterStandardCounterPage extends StatefulWidget {
  const FlutterStandardCounterPage({Key? key}) : super(key: key);




  @override
  State<FlutterStandardCounterPage> createState() => _FlutterStandardCounterPageState();
}

class _FlutterStandardCounterPageState extends State<FlutterStandardCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeOfHomePage(),
      home: Scaffold(
        appBar: myAppBar('Стандартный счетчик'),
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),

        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Количество нажатий кнопки:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
