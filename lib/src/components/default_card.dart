import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final List<Widget> children;

  const DefaultCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
