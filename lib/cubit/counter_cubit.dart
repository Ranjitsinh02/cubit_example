import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterInitial> {
  CounterCubit() : super(CounterInitial(0));

  void increment() => emit(CounterInitial(state.counterValue + 1));

  void decrement() => emit(CounterInitial(state.counterValue - 1));
}
