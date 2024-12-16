import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';
import 'def/def.dart';
import 'def/RowColumn.dart';
import 'def/BoxCon.dart';
import 'def/Con2.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About(),
  '/def': (context) => Def(),
  '/rowColumn': (context) => RowColumn(),
  '/boxcon': (context) => BoxCon(),
  '/con2': (context) => Con2()
};

