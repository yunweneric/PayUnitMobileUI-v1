import 'package:flutter/material.dart';

// Theme color
const Color kprimaryColor = Color(0xff3AB19B);

const ksubtitle = TextStyle(
    fontSize: 25.0, color: kprimaryColor, fontWeight: FontWeight.w500);

const kmainpadding =
    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}
