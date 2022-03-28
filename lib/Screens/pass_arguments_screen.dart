import 'package:flutter/material.dart';
import '../Utils/widgets.dart';

// Класс для объявления передаваемых аргумнтов
class PassedArguments {
  final String firstArgument;
  final String secondArgument;

  PassedArguments(this.firstArgument, this.secondArgument);
}

class PassArgumentsScreen extends StatelessWidget {
  const PassArgumentsScreen({Key? key}) : super(key: key);
  get pageName => 'Страница для передачи аргумента';// Заголовок для AppBar


  static const routeName = '/pass_arguments_screen';// Маршрут куда передаются аргументы

  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedArguments;

    return Scaffold(appBar: appBarPassArgumentsScreen(context, pageName),
      drawer: navDrawer(context),
      body: Center(
        child: Column(
            children: [
              const SizedBox(height:40,),
              Text('Значение 1го переданного аргумента: ${args.firstArgument}'),// Вывод передаваемого аргумента
              const SizedBox(height:40,),
              Text('Значение 2го переданного аргумента: ${args.secondArgument}'),// Вывод передаваемого аргумента
            ]
        ),
      ),
    );
  }
}