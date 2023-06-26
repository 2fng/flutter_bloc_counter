import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterIncrease(value: 0)) {
    on<CounterStartLoading>(
      (event, emit) {
        emit(CounterLoading(value: state.value));
      },
    );
    on<CounterIncreasePressed>(
      (event, emit) {
        emit(CounterIncrease(value: state.value + 1));
      },
    );
  }
}
