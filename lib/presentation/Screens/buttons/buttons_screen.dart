import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
static const String name = "buttons_screen";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const BottonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        }, ),
    );
  }
}

class BottonsView extends StatelessWidget {
static const test = Icons.circle;
  const BottonsView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Elevated ")),
            const ElevatedButton(onPressed: null, child:  Text(" Disabled ")),
            
             ElevatedButton.icon(onPressed: () {},
             icon: const Icon(Icons.access_alarm_rounded),label: const Text("Elevated Icon")),
             // ignore: prefer_typing_uninitialized_variables
             ElevatedButton(onPressed: () { var test;
              // ignore: void_checks
              return test;},
             child: const Icon(Icons.circle_rounded),)
             
            ],
        ), 
      ),
    );
  }
}