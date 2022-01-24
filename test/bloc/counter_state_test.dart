import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_counter_app/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;
    setUp(() {
      counterBloc = CounterBloc();
    });
    tearDown(() {
      counterBloc.close();
    });

    test('The initial state for the CounterBloc is CounterBloc(counterValue:0',
        () {
      expect(counterBloc.state, CounterState(counterValue: 0));
    });

    blocTest('Bloc should emit a CounterState(counterValue:1) when Increment function is called', 
    build: () => counterBloc,
    act: (bloc) => counterBloc.on
    expect: [CounterState(counterValue: 1)],
    );
  });
}
