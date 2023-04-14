import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:flutter/material.dart';

class ExampleDetailsScreen extends StatelessWidget {
  const ExampleDetailsScreen({super.key, required this.example});

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Details Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              example.title,
            ),
            const Divider(
              thickness: 3,
            ),
            Text(example.description),
          ],
        ),
      ),
    );
  }
}
