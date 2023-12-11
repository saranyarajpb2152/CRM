import 'package:flutter/material.dart';
import 'package:crm/providers/student_provider.dart';
import 'package:crm/models/student.dart';
import 'package:provider/provider.dart';


class AddStudentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController gradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Student')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: contactController,
              decoration: InputDecoration(labelText: 'Contact'),
            ),
            TextField(
              controller: gradeController,
              decoration: InputDecoration(labelText: 'Grade'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Student newStudent = Student(
                  name: nameController.text,
                  contact: contactController.text,
                  grade: gradeController.text,
                );
                Provider.of<StudentProvider>(context, listen: false).addStudent(newStudent);
                Navigator.pop(context);
              },
              child: Text('Add Student'),
            ),
          ],
        ),
      ),
    );
  }
}
