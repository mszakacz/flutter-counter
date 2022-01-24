import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_counter_app/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });

    test('The initial state for the CounterBloc is CounterBloc(counterValue:0',
        () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });

    blocTest(
      'The Cubit should emit a CounterState(counterValue:1) when Increment function is called',
      build: () => counterCubit,
      act: (cubit) => counterCubit.increment(),
      expect: () => [CounterState(counterValue: 1)],
    );

    blocTest(
      'The Cubit should emit a CounterState(counterValue:-1) when Decement function is called',
      build: () => counterCubit,
      act: (cubit) => counterCubit.decrement(),
      expect: () => [CounterState(counterValue: -1)],
    );
  });
}
