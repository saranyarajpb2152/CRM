import 'package:flutter/material.dart';
import 'package:crm/providers/student_provider.dart';
import 'package:crm/models/student.dart';
import 'package:provider/provider.dart';
import 'package:crm/screens/add_student.dart';
import 'package:crm/screens/student_list.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StudentProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/studentList',
      routes: {
        '/studentList': (context) => StudentListScreen(),
        '/addStudent': (context) => AddStudentScreen(),
      },
    );
  }
}

