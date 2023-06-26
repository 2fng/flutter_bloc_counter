part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncreasePressed extends CounterEvent {}

class CounterStartLoading extends CounterEvent {}


