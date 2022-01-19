import 'package:flutter/material.dart';
import 'package:robots_rolodex/screens/home_screen.dart';

void main(List<String> args) => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Robots Rolodex',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
