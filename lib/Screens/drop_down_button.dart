import 'package:flutter/material.dart';
import 'package:trial_work/Utils/widgets.dart';
//

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {

  get pageName => 'DropdownButton';

  List <String> groups = <String>['...', 'Кастрюли', 'Чайники', 'Хозяйственные изделия',];
  List <String> pans = <String>['...', 'Кастрюля с ободком', 'Кастрюля без ободка', 'Позница', ];
  List <String> teapots = <String>['...', 'Чайник цельнотянутый', 'Чайник с закатным дном', 'Заварник', ];
  List <String> householdProducts = <String>[
    '...',
    'Кружка',
    'Бак',
    'Ведро сварное',
    'Ведро цельнотянутое',
    'Ковш',
    'Ковш с крышкой',
    'Дуршлаг',
    'Бидон',
    'Горшок ночной',
  ];

  List <String> a2 = <String>['...'];

  get items1 => groups;
  get items2 => a2;

  String dropdownValue1 = '...';
  String dropdownValue2 = '...';
  bool ignore = true;







  // if (dropdownValue1 == 'Кастрюли') { List <String> items2 => <String>['...', 'Пять', 'Шесть', 'Семь', 'Восемь', ];}
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
              const Text('Группа изделий:'),
              DropdownButton(
                value: dropdownValue1,
                items: items1.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                onChanged: (String? newValue){ setState(() {
                  dropdownValue1 = newValue!;
                  if (newValue == '...') {dropdownValue2 = '...'; ignore=true;}
                  else if (newValue == 'Кастрюли'){a2=pans;ignore=false;}
                  else if (newValue == 'Чайники'){a2=teapots;ignore=false;}
                  else if (newValue == 'Хозяйственные изделия'){a2=householdProducts;ignore=false;}
                  else { ignore=false;}
                });},
              ),
              const SizedBox(height: 50,),
              const Text('Наименование изделия:'),
              IgnorePointer(
                ignoring: ignore,
                child: DropdownButton(
                  value: dropdownValue2,
                  items: items2.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );}).toList(),
                  onChanged: (String? newValue){ setState(() {
                    dropdownValue2 = newValue!;
                  });},
                ),
              ),
              const SizedBox(height: 50,),
              Text('Группа изделий: "$dropdownValue1",',
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('Наименование изделия: "$dropdownValue2"',
                  textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
