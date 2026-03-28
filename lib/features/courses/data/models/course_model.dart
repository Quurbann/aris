import '../../domain/entities/course_entity.dart';

class CourseModel extends CourseEntity {
  const CourseModel({
    required super.id,
    required super.title,
    required super.category,
    required super.duration,
    required super.points, required super.imageUrl,
  });

  factory CourseModel.fromEntity(CourseEntity entity) => CourseModel(
        id: entity.id,
        title: entity.title,
        category: entity.category,
        duration: entity.duration,
        points: entity.points, 
        imageUrl: entity.imageUrl, 
      );
}