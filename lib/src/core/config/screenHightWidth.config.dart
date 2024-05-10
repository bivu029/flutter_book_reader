import 'dart:ui';
import 'package:flutter/material.dart';

class AppScreen {
  // First get the FlutterView.
  static final FlutterView _view =
      WidgetsBinding.instance.platformDispatcher.views.first;

  // Dimensions in logical pixels (dp)
  static final Size _size = _view.physicalSize / _view.devicePixelRatio;

  // Static width and height
  static final double width = _size.width;
  static final double height = _size.height;
}
