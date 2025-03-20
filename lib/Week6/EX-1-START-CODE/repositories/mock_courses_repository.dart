import 'package:week5/Week6/EX-1-START-CODE/models/course.dart';
import 'package:week5/Week6/EX-1-START-CODE/repositories/courses_repository.dart';

class MockCoursesRepository extends CoursesRepository {
  final List<Course> _courses = [Course(name: 'HTML'), Course(name: 'JAVA')];

  @override
  List<Course> getCourses() {
    return _courses;
  }

  @override
  void addScore(Course course, CourseScore score) {
    final studentCourse = _courses.firstWhere((c) => c == course);

    studentCourse.addScore(score);
  }
}
