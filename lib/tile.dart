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
