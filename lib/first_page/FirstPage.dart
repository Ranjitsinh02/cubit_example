import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatefulWidget {
  static const String firstPage = "/";

  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Cubit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            BlocBuilder<CounterCubit, CounterInitial>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).increment();
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () =>
                            BlocProvider.of<CounterCubit>(context).decrement(),
                        child: const Text(
                          "Sub",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
