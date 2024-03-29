import 'package:flutter/material.dart';
class ProgresScreen extends StatelessWidget {

  static const name = "progress";   

  
  const ProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("progress Indicator"),
      ),
      body: const ProgressView(),
    );
  }
}

class ProgressView extends StatelessWidget {
  const ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
        SizedBox(height: 30),
        Text("Circular Progress Indicator"),
        SizedBox(height: 10,),
        CircularProgressIndicator(strokeWidth: 2,),
        SizedBox(height: 20,),
        Text("Circular & Linear Controlado"),
        SizedBox(height: 10,),
        _ControlledProgresIndicator(),
        


        


        ],
        
      ),
    );
  }
}


class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300,), (value){
        return (value * 2) /100; // 0.0, 1.00
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
      //over


        return    Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(value: progressValue ,strokeWidth: 2, backgroundColor: Colors.black12,),
            const SizedBox(width: 20,),
            Expanded(child: LinearProgressIndicator(value: progressValue,))
      
          ],
        ),
      );

      },
    );
  }
}