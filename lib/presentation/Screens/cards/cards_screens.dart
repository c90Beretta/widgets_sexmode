import 'package:flutter/material.dart';

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
  const CardScreen({super.key});
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
    return  SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardType1(card["label"],card["elevation"]),
          ),
          ...cards.map(
            (card) => _CardType2(card["label"],card["elevation"]),
          ),
          ...cards.map(
            (card) => _CardType3(card["label"],card["elevation"]),
          ),
           ...cards.map(
            (card) => _CardType4(card["label"],card["elevation"]),
          ),
     



          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:   Padding(
        padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {
                  
                }, icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
          
             )
            ],
          ),
        ),
      )
    ;
  }
}

class _CardType2 extends StatelessWidget {
  
  final String label;
  final double elevation;

  const _CardType2(this.label, this.elevation);

  @override
  Widget build(BuildContext context) {
final colors = Theme.of(context).colorScheme;

    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(const Radius.circular(12)),
        side: BorderSide(
        )
      ),
      elevation: elevation,
      child:   Padding(
        padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {
                  
                }, icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - outline"),
          
             )
            ],
          ),
        ),
      )
    ;
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType3 (this.label, this.elevation);

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child:   Padding(
        padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {
                  
                }, icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
             Align(
              alignment: Alignment.bottomLeft,
              child: Text("$label - filled"),
          
             )
            ],
          ),
        ),
      )
    ;
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType4 (this.label, this.elevation);

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network("https://picsum.photos/id/${elevation.toInt()}/600/350",
          height: 350,
          fit: BoxFit.cover,
          ),


          Align(
          
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: IconButton(onPressed: () {
                
              }, icon: const Icon(Icons.more_vert_outlined),
              ),
            ),
          ),
    
        ],
      ),
      )
    ;
  }
}
