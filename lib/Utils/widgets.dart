import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';


// AppBar для начальной страницы (без кнопок действия)
PreferredSizeWidget myAppBar(context, pageName) => AppBar(
  title: Text('$pageName'),
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
      tooltip: 'На начальную страницу',
      onPressed: (){Navigator.pushNamed(context, '/');},
      icon: const Icon(Icons.home),),// Кнопка перехода на главный экран
    IconButton(
    tooltip: 'На предыдущую страницу',
      onPressed: (){Navigator.pop(context);},
      icon: const Icon(Icons.arrow_back),),// Кнопка перехода на главный экран
]
);
// AppBar для страницы, на которую передается аргумент
PreferredSizeWidget appBarPassArgumentsScreen(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),
    title: Center(
        child: Text('$pageName',
          maxLines: 2,
          style: TextStyle(fontSize: 20,),
          // style: TextStyle(
          //   fontWeight: FontWeight(),
          // ),
        )
    ),
    actions: <Widget>[
      IconButton(
        tooltip: 'На начальную страницу',
        onPressed: (){Navigator.pushNamed(context, '/');},
        icon: const Icon(Icons.home),),// Кнопка перехода на главный экран
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
      ListTile(
        leading: const Icon(CupertinoIcons.add_circled,
          color: Colors.lightGreen,),
        title: const Text('Стандартный счетчик'),
        onTap: (){
          Navigator.pushNamed(context, '/flutter_standard_counter');
        },
      ),// Кнопка перехода на экран счетчика
      ListTile(
        leading: const Icon(CupertinoIcons.down_arrow),
        title: const Text('DropdownButton'),
        onTap: (){
          Navigator.pushNamed(context, '/drop_down_button');
        },
      ),// Кнопка перехода к DropdownButton
      const Divider(
        thickness: 2,
      ),
      ListTile(
        leading: const Icon(Icons.exit_to_app),
        title: const Text('Выйти из приложения'),
        onTap: (){SystemChannels.platform.invokeMethod('SystemNavigator.pop');},
      ),// Кнопка выхода из приложения

    ],
  ),
);

