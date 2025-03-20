import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week5/Week6/EX-1-START-CODE/providers/courses_provider.dart';
import 'package:week5/Week6/EX-1-START-CODE/repositories/mock_courses_repository.dart';

import 'screens/course_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CoursesProvider(MockCoursesRepository()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CourseListScreen(),
    );
  }
}
