import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';
import 'def/def.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About(),
  '/def': (context) => Def(),

};

