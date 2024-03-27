import 'package:flutter/material.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final teachers = [];
    for (int i = 0; i < 50; i++) {
      teachers.add({
        'code': 'T${i + 1}',
        'name': 'Teacher ${i + 1}',
        'age': 20 + i * 3,
        'star': i % 3,
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('รายชื่อครู'),
      ),
      body: ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(teachers[index]['age'].toString()),
            title: Text(teachers[index]['name']),
            subtitle: Text('รหัส ${teachers[index]['code']}'),
          );
        },
      ),
    );
  }
}
