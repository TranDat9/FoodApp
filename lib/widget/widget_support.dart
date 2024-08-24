import 'package:flutter/material.dart';
import 'dart:ui';

class AppWidget {
  static TextStyle boldTextFiedStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle HeadlineFiedStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle LightTextFiedStyle(){
    return TextStyle(
        color: Colors.black54,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins'
    );
  }

  static TextStyle semiBoldTextFiedStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins'
    );
  }

}