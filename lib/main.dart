import 'package:bloc_counter1/bloc/counter_bloc.dart';
import 'package:bloc_counter1/presentarion/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bloc provider, чтобы отслеживать все изменения в ui
    return BlocProvider(
      //через create передаём наш блок
      create: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const CounterScreen(),
      ),
    );
  }
}
