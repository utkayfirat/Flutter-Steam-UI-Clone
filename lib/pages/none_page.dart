import 'package:flutter/material.dart';
import 'package:steam_ui/cc/cons.dart';

class NonePage extends StatelessWidget {
  const NonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  kColor.kMenuBackgroundColor,
        child: Center(
          child: Text("Sorry, It's not available.",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
          ),
        ),
      ),
    );
  }
}
