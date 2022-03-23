import 'package:flutter/material.dart';

import '../Utils/widgets.dart';

class MyDropdownButton extends StatelessWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  // static const String _title = 'Flutter Code Sample';

  get pageName => 'Кнопка DropdownButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: _title,
      home: Scaffold(
        appBar: appBar(context, pageName),
        drawer: navDrawer(context),
        body: Center(
          child: Column(
            children: const [
              SizedBox(height: 20,),
              MyStatefulWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '...';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const SizedBox(width: 100,),
      // disabledHint: const SizedBox(width: 50,),
      focusColor: Colors.lightGreen,
      dropdownColor: Color(0xFFFFCCBC), // фон выпавшего списка
      autofocus: false,
      alignment: AlignmentDirectional.centerStart,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      onTap:(){},
      items: <String>['...','Один', 'Два', 'Три', 'Четыре.........']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
