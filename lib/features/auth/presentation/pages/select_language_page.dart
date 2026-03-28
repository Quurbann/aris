import 'package:aris/features/auth/presentation/provider/select_language_provider.dart';
import 'package:aris/features/courses/presentation/pages/home_page.dart';
import 'package:aris/features/courses/presentation/provider/courses_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/language_item_widget.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SelectLanguageProvider>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Text(
                'Choose the Language',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF1A1A4B),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 24),
                itemCount: provider.languages.length,
                itemBuilder: (context, index) {
                  final language = provider.languages[index];
                  return LanguageItemWidget(
                    language: language,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => ChangeNotifierProvider(create: (BuildContext context) => CoursesProvider(),
                        child: HomePage())),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
