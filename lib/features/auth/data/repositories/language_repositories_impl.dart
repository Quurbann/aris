import 'package:aris/features/auth/domain/repositories/language_repositories.dart';

import '../../domain/entities/language_entity.dart';
import '../models/language_model.dart';

class LanguageRepositoryImpl implements LanguageRepository {
  @override
  List<LanguageEntity> getLanguages() {
    return const [
      LanguageModel(name: 'Spanish',  flagAsset: 'assets/images/png/flags/spain.png',  code: 'es'),
      LanguageModel(name: 'English',  flagAsset: 'assets/images/png/flags/england.png',  code: 'en'),
      LanguageModel(name: 'German',   flagAsset: 'assets/images/png/flags/germany.png',   code: 'de'),
      LanguageModel(name: 'Korean',   flagAsset: 'assets/images/png/flags/korea.png',   code: 'ko'),
      LanguageModel(name: 'Polish',   flagAsset: 'assets/images/png/flags/poland.png',   code: 'pl'),
      LanguageModel(name: 'Italian',  flagAsset: 'assets/images/png/flags/italy.png',  code: 'it'),
    ];
  }
}