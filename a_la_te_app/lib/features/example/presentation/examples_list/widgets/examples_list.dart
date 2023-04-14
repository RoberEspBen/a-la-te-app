import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:a_la_te_app/features/example/presentation/examples_list/widgets/example_item.dart';
import 'package:flutter/material.dart';

class ExamplesList extends StatelessWidget {
  const ExamplesList({super.key, required this.examples});

  final List<Example> examples;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: examples.length,
      itemBuilder: (context, index) {
        return ExampleItem(example: examples[index]);
      },
    );
  }
}
