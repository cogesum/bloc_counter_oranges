import 'package:bloc_counter1/presentarion/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 219, 147),
      appBar: AppBar(
        title: const Text(
          "Bloc Counter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const CounterWidget(),
    );
  }
}
