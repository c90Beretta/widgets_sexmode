
import 'package:flutter/material.dart';


class RecordatorioScreen extends StatelessWidget {
  const RecordatorioScreen({super.key});
  static const String name = "/recordatorioscreens";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Recordatorio App"),
      ),
      body: const AddRecortaroios(),
    );
  }
}


class AddRecortaroios extends StatelessWidget {
  const AddRecortaroios({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text("Vista de Recordatorios"),
          SizedBox(height: 10,),
          ListaRecordatorios(),

        ],
      ),

    );
  }
}


class ListaRecordatorios extends StatelessWidget {
  const ListaRecordatorios({super.key});

  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
    
    return  Center(
      child: 
      Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.6,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            ListTile(
              title: Text("Recordatorio 1"),
              subtitle: Text("Descripcion del recordatorio 1"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              title: Text("Recordatorio 2"),
              subtitle: Text("Descripcion del recordatorio 2"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              title: Text("Recordatorio 3"),
              subtitle: Text("Descripcion del recordatorio 3"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              title: Text("Recordatorio 4"),
              subtitle: Text("Descripcion del recordatorio 4"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              title: Text("Recordatorio 5"),
              subtitle: Text("Descripcion del recordatorio 5"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}