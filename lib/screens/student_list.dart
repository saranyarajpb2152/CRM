import 'package:flutter/material.dart';
import 'package:crm/providers/student_provider.dart';
import 'package:provider/provider.dart';

class StudentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final studentProvider = Provider.of<StudentProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Student List')),
      body: ListView.builder(
        itemCount: studentProvider.students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(studentProvider.students[index].name),
            subtitle: Text(studentProvider.students[index].grade),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addStudent');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
