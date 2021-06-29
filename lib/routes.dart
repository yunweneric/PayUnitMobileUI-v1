import 'package:flutter/material.dart';
import 'package:payunitinterface/screens/pages/Homepage.dart';

Route generateRoute(RouteSettings settings) {
  //check named route and return page
  switch (settings.name) {
    case '/home':
      return MaterialPageRoute<Widget>(builder: (context) => Homepage());

    default:
      return MaterialPageRoute<Widget>(builder: (context) => Homepage());
  }
}
