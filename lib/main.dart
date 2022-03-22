import 'package:flutter/material.dart';
import 'package:trial_work/Screens/home_page.dart';
import 'Screens/flutter_standard_counter.dart';
import 'Utils/themes.dart';


void main() {
  // runApp(const HomePage());
  runApp(const TrialWorkApp());
}

class TrialWorkApp extends StatefulWidget {
  const TrialWorkApp({Key? key}) : super(key: key);

  @override
  _TrialWorkAppState createState() => _TrialWorkAppState();
}

class _TrialWorkAppState extends State<TrialWorkApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeOfTrialWorkApp(),
      // home: const FlutterStandardCounterPage(title: 'Страница счетчика'),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/flutter_standard_counter': (context) => const FlutterStandardCounterPage(),
      },
    );
  }
}


// class TrialWorkApp extends StatelessWidget {
//   const TrialWorkApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: themeOfTrialWorkApp(),
//       home: const FlutterStandardCounterPage(title: 'Страница счетчика'),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const HomePage(),
//         '/flutter_standard_counter': (context) => const FlutterStandardCounterPage(title: ',khngnk',),
//         // '/nav_calculator': (context) => const Calculator(),
//         // '/counter': (context) => CounterScreen(storage: Counter2Storage()),
//         // '/user_inf': (context) => const TaskMainScreen(),
//       },
//     );
//   }
// }