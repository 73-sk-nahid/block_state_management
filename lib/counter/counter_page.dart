/*
this actually responsible for providing CounterCubit to CounterView (UI)
- Use BlockProvider
 */

import 'package:block_state_management/counter/counter_cubit.dart';
import 'package:block_state_management/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state){
          if(state == 10){
            showDialog(context: context,
                builder: (context)=> const AlertDialog(
                  content: Text('Reached 10 digits'),
                ));
          }
        },
        child: const CounterView(),
      ),
    );
  }
}
