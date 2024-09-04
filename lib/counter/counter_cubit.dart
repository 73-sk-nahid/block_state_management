/*

cubit: a simplified version of BloC(Business Logic Component) for easy state management
write: "flutter pub add flutter_bloc" on terminal to add bloc package
 */

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  // constructor: get initial state
  CounterCubit(super.initialState);

  // increment
  void increment()=> emit(state + 1);

  // decrement
  void decrement()=> emit(state - 1);
}
