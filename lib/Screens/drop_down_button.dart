import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial_work/Utils/widgets.dart';


class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  get pageName => 'DropdownButton';

  get items1 => <String>['...', 'Один', 'Два', 'Три', 'Четыре', ];
  get items2 => <String>['...', 'Пять', 'Шесть', 'Семь', 'Восемь', ];

  String dropdownValue1 = '...';
  String dropdownValue2 = '...';

  bool a = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(context, pageName),
        drawer: navDrawer(context),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text('Выпадающий список №1:'),
              DropdownButton(
                value: dropdownValue1,
                  items: items1.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                onChanged: (String? newValue){ setState(() {
                  dropdownValue1 = newValue!;
                  if (newValue == '...') {dropdownValue2 = '...'; a=true;} else{a=false;}
                });},
              ),
              const SizedBox(height: 50,),
              const Text('Выпадающий список №2:'),
              IgnorePointer(
                ignoring: a,
                child: DropdownButton(
                  value: dropdownValue2,
                  items: items2.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );}).toList(),
                  onChanged: (String? newValue){ setState(() {
                    dropdownValue2 = newValue!;
                  });},
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('В списке 1 выбранно: "$dropdownValue1",',
                  textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('а в списке 2 выбрано: "$dropdownValue2"',
                  textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
