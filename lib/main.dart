import 'package:clone_iti_itau/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(CloneIti());

class CloneIti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.HOME,
      routes: Routes().routes,
    );
  }
}
