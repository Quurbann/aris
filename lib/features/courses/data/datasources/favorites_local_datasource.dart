import 'package:shared_preferences/shared_preferences.dart';

class FavoritesLocalDatasource {
  static const String _key = 'favorite_course_ids';

  Future<List<String>> getFavoriteIds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  Future<void> addFavorite(String courseId) async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(_key) ?? [];
    if (!ids.contains(courseId)) {
      ids.add(courseId);
      await prefs.setStringList(_key, ids);
    }
  }

  Future<void> removeFavorite(String courseId) async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList(_key) ?? [];
    ids.remove(courseId);
    await prefs.setStringList(_key, ids);
  }

  Future<bool> isFavorite(String courseId) async {
    final ids = await getFavoriteIds();
    return ids.contains(courseId);
  }
}