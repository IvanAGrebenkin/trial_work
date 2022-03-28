import 'package:flutter/material.dart';
import 'package:trial_work/Utils/widgets.dart';
import 'package:photo_view/photo_view.dart';

class DrawingScreen extends StatefulWidget {
  const DrawingScreen({Key? key}) : super(key: key);

  @override
  State<DrawingScreen> createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  String a ='lib/Drawings/2340x1300.png';
  get pageName => 'Просмотр чертежа'; // Заголовок в AppBar
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(context, pageName),
        drawer: navDrawer(context),
        body: PhotoView(
          imageProvider: AssetImage(a),
        ),
      ),
    );
  }
}
