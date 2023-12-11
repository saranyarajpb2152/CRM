import 'package:flutter/material.dart';
import 'package:crm/models/student.dart';

class StudentProvider extends ChangeNotifier {
  List<Student> _students = [];

  List<Student> get students => _students;

  void addStudent(Student student) {
    _students.add(student);
    notifyListeners();
  }
}
