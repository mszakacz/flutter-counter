part of 'counter_bloc.dart';

class CounterState extends Equatable {
  int counterValue;
  CounterState({required this.counterValue});

  @override
  // TODO: implement props
  List<Object?> get props => [this.counterValue];
}
