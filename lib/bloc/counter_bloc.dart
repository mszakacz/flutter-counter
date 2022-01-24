import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

int initValue = 0;

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: initValue)) {
    on<IncrementCounter>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });
    on<DecrementCounter>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
