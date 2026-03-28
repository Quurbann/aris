class CourseEntity {
  final String id;
  final String title;
  final String category;
  final String duration;
  final int points;
  final String imageUrl;

  const CourseEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.duration,
    required this.points, required this.imageUrl,
  });
}