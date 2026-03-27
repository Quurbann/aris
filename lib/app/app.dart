import 'package:aris/features/inital_flow/presentation/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class  App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}