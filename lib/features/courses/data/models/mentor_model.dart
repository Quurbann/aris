import '../../domain/entities/mentor_entity.dart';

class MentorModel extends MentorEntity {
  const MentorModel({
    required super.id,
    required super.name,
    required super.role, 
    required super.imageUrl,
  });
}