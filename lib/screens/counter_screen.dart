import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // propiedad
  int counter = 10;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 5,
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // relativo al widget que tiene mayor tamaño
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Numero de Clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increase: increase,
        decrease: decrease,
        reset: resetCounter,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustomFloatingActions({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: () => increase(),
          child: const Icon(
            Icons.plus_one,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () => reset(),
          child: const Icon(
            Icons.exposure,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () => decrease(),
          child: const Icon(
            Icons.exposure_minus_1,
          ),
        ),
      ],
    );
  }
}
