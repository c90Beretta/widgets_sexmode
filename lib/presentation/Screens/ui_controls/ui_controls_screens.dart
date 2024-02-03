import 'package:flutter/material.dart';



class UiControlsScreens extends StatelessWidget {
  static const name = "UI_Controls_Screen";

  const UiControlsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("UI Screens"),
        ),
        body: const _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            value: true,
            title: const Text("Developer Mode"),
            subtitle: const Text("Controles Adicionales"),
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        RadioListTile(
          title: const Text("Auto"),          
          secondary: const Icon(Icons.directions_car_filled_sharp),
          subtitle: const Text("Viajar Por Auto"),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.car;
          }),
        ),
        RadioListTile(
          title: const Text("Bote"),
          secondary: const Icon(Icons.directions_boat_rounded),
          subtitle: const Text("Viajar Por Bote"),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.boat;
          }),
        ),
        RadioListTile(
          title: const Text("Submarino"),
          secondary: const Icon(Icons.water_rounded),
          subtitle: const Text("Viajar Por Submarino"),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.submarine;
          }),
        ),
        RadioListTile(
          title: const Text("Avion"),
          subtitle: const Text("Viajar Por Avion"),
          secondary: const Icon(Icons.airplanemode_active_rounded),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState(() {
            selectedTransportation = Transportation.plane;
          }),
        )
      ],
    );
  }
}
