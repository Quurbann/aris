import 'package:flutter/material.dart';
import '../../data/datasources/courses_local_datasource.dart';
import '../../data/datasources/favorites_local_datasource.dart';
import '../../domain/entities/course_entity.dart';

class FavoritesProvider extends ChangeNotifier {
  final FavoritesLocalDatasource _favDatasource = FavoritesLocalDatasource();
  final CoursesLocalDatasource _coursesDatasource = CoursesLocalDatasource();

  List<String> _favoriteIds = [];
  List<String> get favoriteIds => _favoriteIds;

  List<CourseEntity> get favoriteCourses => _coursesDatasource.getCourses().where((c) => _favoriteIds.contains(c.id)).toList();

  Future<void> loadFavorites() async {
    _favoriteIds = await _favDatasource.getFavoriteIds();
    notifyListeners();
  }

  bool isFavorite(String courseId) => _favoriteIds.contains(courseId);

  Future<void> toggleFavorite(CourseEntity course) async {
    if (isFavorite(course.id)) {
      await _favDatasource.removeFavorite(course.id);
      _favoriteIds.remove(course.id);
    } else {
      await _favDatasource.addFavorite(course.id);
      _favoriteIds.add(course.id);
    }
    notifyListeners();
  }
}