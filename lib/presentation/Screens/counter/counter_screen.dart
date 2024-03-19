import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_sexmode/presentation/providers/counter_provider.dart';
import 'package:widgets_sexmode/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  const CounterScreen({super.key});
  static const name = "counter_screen";
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch( counterProvider );
    final bool isDarkMode = ref.watch(darkModeProvider);

    return  Scaffold(
      appBar: AppBar(title: const Text("Counter Screen"),
      actions: [
        IconButton(
          icon:  Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          onPressed: () {
            ref.read(darkModeProvider.notifier).state = !isDarkMode;
            
          },)
      ],),
      body:  Center(

      child:  Text('Valor: $clickCounter', style: const TextStyle(fontSize: 30)),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      )
    );
  }
}



