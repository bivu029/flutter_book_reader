 
    library text_style;
    import 'package:flutter/material.dart';
    // 
    mixin Font implements FontWeight  {
        static FontWeight get l => FontWeight.w300;
        static FontWeight get n => FontWeight.w400;
        static FontWeight get sb => FontWeight.w500;
        static FontWeight get b => FontWeight.w700;
    }
    // 
    class AppTextStyle extends TextStyle {

        static TextStyle get header =>const TextStyle();
    }