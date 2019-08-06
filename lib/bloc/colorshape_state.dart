import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ColorshapeState extends Equatable {
  ColorshapeState([List props = const []]) : super(props);
}

class InitialColorshapeState extends ColorshapeState {}

class RedColorState extends ColorshapeState{
  final color;

  RedColorState(this.color) : super([color]);
}

class GreenColorState extends ColorshapeState {
  final color;

  GreenColorState(this.color) : super([color]);
}
