import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import './bloc.dart';

class ColorshapeBloc extends Bloc<ColorshapeEvent, ColorshapeState> {
  @override
  ColorshapeState get initialState => InitialColorshapeState();

  @override
  Stream<ColorshapeState> mapEventToState(
    ColorshapeEvent event,
  ) async* {
    if(event is ChangeColor) {
      if(event.colour == 1) yield RedColorState(Color(0x8b0000));
      else yield GreenColorState(Color(0x00ff00));
    }
  }

}
