import 'package:flutter/material.dart';
import '../../data/datasources/courses_local_datasource.dart';
import '../../domain/entities/course_entity.dart';
import '../../domain/entities/mentor_entity.dart';

class CoursesProvider extends ChangeNotifier {
  final CoursesLocalDatasource _datasource = CoursesLocalDatasource();

  String _selectedCategory = 'Beginner';
  String get selectedCategory => _selectedCategory;

  bool _showAll = false;
  bool get showAll => _showAll;

  List<CourseEntity> get courses {
    if (_searchQuery.isNotEmpty) {
      return _datasource
          .getCourses()
          .where((c) => c.title.toLowerCase().contains(_searchQuery))
          .toList();
    }
    return _showAll
        ? _datasource.getCourses()
        : _datasource.getCoursesByCategory(_selectedCategory);
  }

  List<MentorEntity> get mentors {
    if (_searchQuery.isNotEmpty) {
      return _datasource
          .getInstructors()
          .where(
            (m) =>
                m.name.toLowerCase().contains(_searchQuery) ||
                m.role.toLowerCase().contains(_searchQuery),
          )
          .toList();
    }
    return _datasource.getInstructors();
  }

  void selectCategory(String category) {
    _selectedCategory = category;
    _showAll = false;
    notifyListeners();
  }

  void toggleShowAll() {
    _showAll = !_showAll;
    notifyListeners();
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  void search(String query) {
    _searchQuery = query.toLowerCase();
    notifyListeners();
  }
}
