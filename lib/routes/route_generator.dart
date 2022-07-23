import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:steam_ui/pages/friends_page.dart';
import 'package:steam_ui/pages/none_page.dart';
import 'package:steam_ui/pages/store_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _genRoute(FriendsPage());
        break;

      case 'magaza':
        return _genRoute(MagazaPage());
        break;

      case 'sohbet':
        return _genRoute(FriendsPage());
        break;

      default:
        return _genRoute(NonePage());
    }
  }

  static Route<dynamic>? _genRoute(Widget goesWidget) {
    if (defaultTargetPlatform == TargetPlatform.iOS)
      return CupertinoPageRoute(builder: (context) => goesWidget);
    else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(builder: (context) => goesWidget);
    else
      return MaterialPageRoute(builder: (context) => goesWidget);
  }
}
