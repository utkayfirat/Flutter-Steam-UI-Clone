import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steam_ui/pages/friends_page.dart';
import 'package:steam_ui/routes/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}