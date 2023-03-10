import 'package:flutter/material.dart';

class FilledCard extends StatelessWidget {
  const FilledCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 300,
          child: Center(child: Text('Filled card')),
        ),
      ),
    );
  }
}

class ListOfCards extends StatelessWidget {
  final List cards = List.generate((10), (index) => FilledCard());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return FilledCard();
        });
  }

  //   @override
  //   Widget build(BuildContext context) {
  //    return Column(children: [
  //   Row(children: const <Widget>[
  //     FilledCard(),
  //     FilledCard(),
  //     FilledCard()
  //   ]),
  //   Row(children: const <Widget>[
  //     FilledCard(),
  //     FilledCard(),
  //     FilledCard()
  //   ]),
  // ]);
  //   },
}
