import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miprimerbloc/pages/home_screen/bloc/home_screen_events.dart';
import 'package:miprimerbloc/pages/home_screen/bloc/operation_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
            create: (_) => OperationBloc(), child: const Screen()));
  }
}

class Screen extends StatelessWidget {
  const Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<OperationBloc>().add(AddEvents());
              },
              icon: const Icon(Icons.abc)),
          IconButton(
              onPressed: () {
                context.read<OperationBloc>().add(DecrementEvent());
              },
              icon: const Icon(Icons.abc_outlined)),
        ],
      ),
      body: Center(
        child: BlocBuilder<OperationBloc, int>(builder: (context, count) {
          return Text('$count');
        }),
      ),
    );
  }
}
