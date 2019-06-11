import 'package:equatable/equatable.dart';

abstract class BaseEvent extends Equatable {
  BaseEvent([List props]) : super(props);
}

class OnStart extends BaseEvent {
  @override
  String toString() => 'OnStart';
}
