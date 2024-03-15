import 'package:flutter/material.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  static const name = "counter_screen";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Counter Screen")),
      body: Contador(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
        child: const Icon(Icons.add),
      )
    );
  }
}



class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Valor: 10", style: TextStyle(fontSize: 30)),
    );
  }
}