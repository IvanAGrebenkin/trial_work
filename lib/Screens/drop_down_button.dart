import 'package:flutter/material.dart';
import 'package:trial_work/Utils/widgets.dart';

import '../Utils/lists.dart';
//

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({Key? key}) : super(key: key);

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  get pageName => 'DropdownButton'; // Заголовок в AppBar
  bool isVisible = false;
  bool ignoreNameList = true;// Переменная для выключения списка наименования изделия


  List <String> namesList = <String>['...'];// Переменная для определения необходимого списка с наименованиями изделий
  String groupValue = '...';// Переменная для хранения выбранного значения в списке группы изделий
  String productNameValue = '...';// Переменная для хранения выбранного значения в списке наименования изделия


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
                value: groupValue,
                items: groupsList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );}).toList(),
                onChanged: (String? newValue){ setState(() {
                  groupValue = newValue!;
                  if (newValue == '...') {productNameValue = '...'; isVisible = false;ignoreNameList=true;}
                  else if (newValue == 'Кастрюли'){namesList=pans;productNameValue = '...'; isVisible = false;ignoreNameList=false;}
                  else if (newValue == 'Чайники'){namesList=teapots;productNameValue = '...'; isVisible = false;ignoreNameList=false;}
                  else if (newValue == 'Хозяйственные изделия'){namesList=householdProducts;productNameValue = '...'; isVisible = false;ignoreNameList=false;}
                  else if (newValue == 'Плоские изделия'){namesList=flatProducts;productNameValue = '...'; isVisible = false;ignoreNameList=false;}
                  // else { ignore=false;}
                });},
              ),
              const SizedBox(height: 50,),
              const Text('Наименование изделия:'),
              IgnorePointer(
                ignoring: ignoreNameList,
                child: DropdownButton(
                  value: productNameValue,
                  items: namesList.map<DropdownMenuItem<String>>((String value) {return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );}).toList(),
                  onChanged: (String? newValue1){ setState(() {
                    productNameValue = newValue1!;
                    if (productNameValue == '...') {isVisible = false;}
                    else {isVisible = true;}
                  });},
                ),
              ),
              const SizedBox(height: 50,),
              Text('Группа изделий: "$groupValue",',
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('Наименование изделия: "$productNameValue"',
                  textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 50,),
              Visibility(
                visible: isVisible,
                child: SizedBox(width:250, height:55,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Появляющаяся кнопка',
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
                ),
              ),// Появляющаяся кнопка
            ],
          ),
        ),
      ),
    );
  }
}
