import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// AppBar для начальной страницы (без кнопок действия)
PreferredSizeWidget myAppBar(context, pageName) => AppBar(
  title: Text('$pageName'),
  // actions: <Widget>[
  //   IconButton(
  //     tooltip: 'Переход на главный экран',
  //     onPressed: (){Navigator.pop(context);},
  //     icon: const Icon(Icons.arrow_back),),// Кнопка перехода на главный экран
  // ]
);


// AppBar для последующих страниц
PreferredSizeWidget appBar(context, pageName) => AppBar(
  leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),
  title: Center(child: Text('$pageName',)),
  actions: <Widget>[
    IconButton(
    tooltip: 'На предыдущую страницу',
      onPressed: (){Navigator.pop(context);},
      icon: const Icon(Icons.arrow_back),),// Кнопка перехода на главный экран
]
);


// Панель navDrawer
Widget navDrawer(context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  // child: const Image(image: AssetImage('assets/dart-logo 1.png'),),
                ),
              ],
            ),
          )),
      // ListTile(
      //   leading: const Icon(Icons.account_circle),
      //   title: const Text('Главный экран'),
      //   onTap: (){
      //     // Navigator.pushNamed(context, '/flutter_standard_counter');
      //   },
      // ),
      // ListTile(
      //   leading: const Icon(CupertinoIcons.circle_grid_3x3_fill),
      //   title: const Text('Калькулятор'),
      //   onTap: (){
      //     // Navigator.pushNamed(context, '/flutter_standard_counter');
      //   },
      // ),
      ListTile(
        leading: const Icon(CupertinoIcons.add_circled),
        title: const Text('Стандартный счетчик'),
        onTap: (){
          Navigator.pushNamed(context, '/flutter_standard_counter');
        },
      ),// Кнопка перехода на экран счетчика
      const Divider(
        thickness: 2,
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Выйти из аккаунта'),
        onTap: (){
          Navigator.pop(context);
          },
      ),// Кнопка выхода из учетной записи
    ],
  ),
);