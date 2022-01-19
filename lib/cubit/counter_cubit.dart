import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

int initValue = 0;

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: initValue));

  void increment() => emit(CounterState(counterValue: state.counterValue + 1));

  void decrement() => emit(CounterState(counterValue: state.counterValue - 1));
}
