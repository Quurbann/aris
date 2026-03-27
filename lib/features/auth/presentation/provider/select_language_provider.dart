import 'package:aris/features/auth/domain/usecases/get_languages.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/language_entity.dart';

class SelectLanguageProvider extends ChangeNotifier {
  final GetLanguages getLanguagesUseCase;

  List<LanguageEntity> _languages = [];
  List<LanguageEntity> get languages => _languages;

  SelectLanguageProvider({required this.getLanguagesUseCase}) {
    _loadLanguages();
  }

  void _loadLanguages() {
    _languages = getLanguagesUseCase();
    notifyListeners();
  }
}