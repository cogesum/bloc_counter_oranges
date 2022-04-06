import 'package:bloc_counter1/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child:
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(child: Image(image: AssetImage("assets/orange.png"))),
            const SizedBox(
              height: 10,
            ),
            state is PressedButtonState
                ? Text(
                    "С вас ${state.price} рублей",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                : Text(
                    "Сколько апельсинов надо?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () =>
                  context.read<CounterBloc>().add(DoubleMultiplyEvent()),
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  elevation: 0,
                  onPressed: () =>
                      context.read<CounterBloc>().add(DecrementEvent()),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Chip(
                  padding: EdgeInsets.all(10),
                  label: Text(
                    state.countValue.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.amber,
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  elevation: 0,
                  onPressed: () =>
                      context.read<CounterBloc>().add(IncrementEvent()),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              elevation: 0,
              onPressed: () =>
                  context.read<CounterBloc>().add(DoubleDivideEvent()),
              child: const Icon(
                CupertinoIcons.divide,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(PressButtonEvent()),
                child: Text(
                  "Купить",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ))
          ]);
        }));
  }
}
