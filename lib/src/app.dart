import 'package:flutter/material.dart';
import 'ui/screens/MainScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MainScreenWidget(),
    );
  }
}
