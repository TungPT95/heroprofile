import 'package:equatable/equatable.dart';

class BaseState extends Equatable {
  BaseState([List props = const []]) : super(props);
}

class InitialState extends BaseState {
  @override
  String toString() => 'Initializing';
}

class DoNothingState extends BaseState {
  @override
  String toString() => 'Do Nothing';
}
