import 'package:flutter/foundation.dart';
import 'package:week5/Week6/EX-1-START-CODE/models/course.dart';
import 'package:week5/Week6/EX-1-START-CODE/repositories/courses_repository.dart';

class CoursesProvider extends ChangeNotifier {
  final CoursesRepository _repository;

  CoursesProvider(this._repository);

  List<Course> get getCourses => _repository.getCourses();

  Course getCourseFor(String courseId) {
    return getCourses.firstWhere((c) => c.name == courseId);
  }

  void addScore(Course course, CourseScore score) {
    _repository.addScore(course, score);
    notifyListeners();
  }
}
