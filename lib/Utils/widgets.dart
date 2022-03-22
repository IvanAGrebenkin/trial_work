import 'package:flutter/material.dart';

PreferredSizeWidget appBar(context, pageName) => AppBar(
  title: Text('$pageName'),
  actions: <Widget>[
    IconButton(
    tooltip: 'Переход на главный экран',
      onPressed: (){Navigator.pushNamed(context, '/');},
      icon: const Icon(Icons.account_circle),),// Кнопка перехода на главный экран
]
);