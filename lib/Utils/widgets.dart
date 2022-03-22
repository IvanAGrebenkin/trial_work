import 'package:flutter/material.dart';

PreferredSizeWidget appBar(context, pageName) => AppBar(
  title: Text('$pageName'),
  actions: <Widget>[
    IconButton(
    tooltip: 'Переход на главный экран',
      onPressed: (){Navigator.pop(context);},
      icon: const Icon(Icons.home),),// Кнопка перехода на главный экран
]
);