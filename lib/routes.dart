import 'package:flutter/material.dart';
import 'package:start/def2/Counter.dart';
import 'Home.dart';
import 'About.dart';
import 'def/def.dart';
import 'def/RowColumn.dart';
import 'def/BoxCon.dart';
import 'def/Con2.dart';

import 'def2/ParentChild.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/about': (context) => About(),
  '/def': (context) => Def(),
  '/rowColumn': (context) => RowColumn(),
  '/boxcon': (context) => BoxCon(),
  '/con2': (context) => Con2(),
  '/counter': (context) => Counter(),
  '/p&c': (context) => ParentChild()
};

