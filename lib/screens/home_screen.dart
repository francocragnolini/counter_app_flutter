import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 5,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // relativo al widget que tiene mayor tamaño
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Numero de Clicks',
              style: fontSize30,
            ),
            Text(
              '10',
              style: fontSize30,
            ),
          ],
        ),
      ),
    );
  }
}
