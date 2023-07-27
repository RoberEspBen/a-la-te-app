import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/utils/snackbar.dart';
import 'package:a_la_te_app/features/example/application/examples_list_cubit.dart';
import 'package:a_la_te_app/features/example/application/examples_list_state.dart';
import 'package:a_la_te_app/features/example/domain/repositories/example_repository.dart';
import 'package:a_la_te_app/features/example/presentation/examples_list/widgets/examples_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamplesListScreen extends StatelessWidget {
  const ExamplesListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ExamplesListCubit(
            exampleRepository: locator<ExampleRepository>(),
          )..getExamples(),
        ),
      ],
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamplesListCubit, ExamplesListState>(
      listenWhen: (context, state) {
        return state.status.isError;
      },
      listener: (context, state) {
        if (state.status.isError) {
          context.showSnackBar(message: state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state.status.isInitial || state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isLoaded) {
          if (state.examples.isEmpty) {
            return const Center(
              child: Text('No hay ejemplos'),
            );
          } else {
            return ExamplesList(examples: state.examples);
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
