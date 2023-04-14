import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExampleItem extends StatelessWidget {
  const ExampleItem({super.key, required this.example});

  final Example example;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoute.exampleDetails.name,
        extra: example,
      ),
      child: Card(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(example.title),
              const Divider(),
              Text(example.description),
            ],
          ),
        ),
      ),
    );
  }
}
