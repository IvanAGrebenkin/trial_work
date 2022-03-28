import 'package:flutter/material.dart';
import '../Utils/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  get pageName => 'Начльная страница';

  get groupValue => null;

  // get dropdownValue1 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, pageName),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            SizedBox(width:250, height:55,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/flutter_standard_counter');
                },
                child: const Text('Переход в стандартный счетчик',
                  textAlign: TextAlign.center,
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
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),// Кнопка перехода на экран стандартного счетчика
            const SizedBox(height: 25,),
            const Divider(),
            const SizedBox(height: 25,),
            SizedBox(width:250, height:55,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/drop_down_button');
                },
                child: const Text('Переход к кнопке DropdownButton',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    inherit: false,
                    fontSize:16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  // primary: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),// Кнопка перехода на экран стандартного счетчика
            const SizedBox(height: 25,),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
