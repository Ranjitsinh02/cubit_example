import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:cubit_example/first_page/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<CounterCubit>(
                  create: (context) => CounterCubit(),
                  child: const FirstPage(),
                ));
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Text("ERROR"),
    );
  });
}
