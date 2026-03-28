import 'package:aris/features/inital_flow/presentation/pages/welcome_page.dart';
import 'package:aris/features/courses/presentation/provider/courses_provider.dart';
import 'package:aris/features/courses/presentation/provider/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CoursesProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()..loadFavorites()),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: WelcomePage(),
        ),
      ),
    );
  }
}