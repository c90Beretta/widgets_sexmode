import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_sexmode/presentation/Screens/cards/cards_persons.dart';

const cards = <Map<String, dynamic>>[
  {"elevation": 0.0, "label": "Elevation 0"},
  {"elevation": 1.0, "label": "Elevation 1"},
  {"elevation": 2.0, "label": "Elevation 2"},
  {"elevation": 3.0, "label": "Elevation 3"},
  {"elevation": 4.0, "label": "Elevation 4"},
  {"elevation": 5.0, "label": "Elevation 5"},
  {"elevation": 6.0, "label": "Elevation 6"},
];

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  static const String name = "cards_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cards Screens")),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
          (card) => _CardType1(card["label"], card["elevation"]),
        )
      ],
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Aquí puedes manejar la acción al tocar la tarjeta
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Personas()));
      },
      child: Card(
        elevation: elevation,
        child: const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [Icon(Icons.more_vert_rounded)],
            ),
          ),
        ),
      ),
    );
  }
}
