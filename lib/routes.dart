import 'package:clone_iti_itau/screens/home/home.dart';
import 'package:flutter/material.dart';

class Routes {

  static const HOME = "/home";
  static const SOBRE = "/sobre";

  final routes = <String, WidgetBuilder>{
    HOME: (BuildContext context) => new HomePage(),
    //SOBRE: (BuildContext context) => new SobrePage(),
  };
}