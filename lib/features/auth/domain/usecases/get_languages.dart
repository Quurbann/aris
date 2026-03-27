import 'package:aris/features/auth/domain/repositories/language_repositories.dart';

import '../entities/language_entity.dart';

class GetLanguages {
  final LanguageRepository repository;

  const GetLanguages(this.repository);

  List<LanguageEntity> call() {
    return repository.getLanguages();
  }
}