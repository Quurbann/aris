import 'package:aris/features/courses/data/models/mentor_model.dart';

import '../models/course_model.dart';

class CoursesLocalDatasource {
  final List<CourseModel> courses = const [
    CourseModel(
      id: 'course_1',
      title: 'Daily English Conversation',
      category: 'Beginner',
      duration: '30 min',
      points: 20,
      imageUrl: 'assets/images/png/courses/course-5.png'
    ),
    CourseModel(
      id: 'course_2',
      title: 'Learn new vocabulary',
      category: 'Intermediate',
      duration: '45 min',
      points: 30,
      imageUrl: 'assets/images/png/courses/course-4.png'
    ),
    CourseModel(
      id: 'course_3',
      title: 'Daily Business Conversation',
      category: 'Advanced',
      duration: '60 min',
      points: 40,
      imageUrl: 'assets/images/png/courses/course-5.png'
    ),
  ];

  final List<MentorModel> instructors = const [
    MentorModel(
      id: 'inst_1',
      name: 'Jennifer Lee',
      role: 'UI Designer',
      imageUrl: 'assets/images/png/courses/person-1.png'
    ),
    MentorModel(
      id: 'inst_2',
      name: 'Olayemii Garuba',
      role: 'Software Dev',
      imageUrl: 'assets/images/png/courses/person-2.png'
    ),
    MentorModel(
      id: 'inst_3',
      name: 'Chris Soft',
      role: 'Software Dev',
      imageUrl: 'assets/images/png/courses/person-3.png'
    ),
  ];

  List<CourseModel> getCourses() => courses;

  List<MentorModel> getInstructors() => instructors;

  List<CourseModel> getCoursesByCategory(String category) =>
      courses.where((c) => c.category == category).toList();
}