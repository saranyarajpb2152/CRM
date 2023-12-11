import 'package:flutter/material.dart';

class Student {
  final String name;
  final String contact;
  final String grade;

  Student({required this.name, required this.contact, required this.grade});
}

class StudentWidget extends StatelessWidget {
  final Student student;

  StudentWidget({required this.student});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(student.name),
      subtitle: Text(student.grade),
      // Add more styling as needed
    );
  }
}
