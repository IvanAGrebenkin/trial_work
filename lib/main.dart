import 'package:flutter/material.dart';
import 'package:trial_work/Screens/home_page.dart';
import 'Screens/drawing_screen.dart';
import 'Screens/drop_down_button.dart';
import 'Screens/flutter_standard_counter.dart';
import 'Screens/pass_arguments_screen.dart';



// void main() {runApp(const DrawingScreen());}
void main() {runApp(const TrialWorkApp());}

class TrialWorkApp extends StatefulWidget {
  const TrialWorkApp({Key? key}) : super(key: key);
  @override
  _TrialWorkAppState createState() => _TrialWorkAppState();
}


class _TrialWorkAppState extends State<TrialWorkApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trial Work',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/flutter_standard_counter': (context) => const FlutterStandardCounterPage(),
        '/drop_down_button': (context) => const MyDropdownButton(),
        PassArgumentsScreen.routeName: (context) => const PassArgumentsScreen(),
        '/drawing_screen': (context) => const DrawingScreen(),
      },
    );
  }
}