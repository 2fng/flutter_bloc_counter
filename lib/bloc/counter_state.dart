// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable {
  final int value;

  const CounterState({
    required this.value,
  });

  @override
  List<Object?> get props => [value];
}

class CounterLoading extends CounterState {
  const CounterLoading({required super.value});
}

class CounterIncrease extends CounterState {
  const CounterIncrease({required super.value});
}
