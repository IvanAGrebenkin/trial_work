import 'package:flutter/material.dart';

import '../Utils/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  get pageName => 'Начльная страница';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, pageName),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Text('Кнопка перехода в счетчик'),
            const SizedBox(height: 50,),
            SizedBox(width:200, height:42,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/flutter_standard_counter');
                },
                child: const Text('Переход в счетчик',
                  style: TextStyle(
                    inherit: false,
                    fontSize:16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  primary: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0)),
                ),
              ),
            ),// Кнопка инкремента счетчика 1
          ],
        ),
      ),
      );

  }
}
