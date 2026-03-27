import '../../domain/entities/language_entity.dart';

class LanguageModel extends LanguageEntity {
  const LanguageModel({
    required super.name,
    required super.flagAsset,
    required super.code,
  });
}