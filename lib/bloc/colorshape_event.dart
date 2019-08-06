import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ColorshapeEvent extends Equatable {
  ColorshapeEvent([List props = const []]) : super(props);
}

class ChangeColor extends ColorshapeEvent {
  final int colour;

  ChangeColor(this.colour) : super([colour]);
}