import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { to_amber, to_light_blue }

mixin ColorBloc implements Bloc<ColorEvent, Color> {}
