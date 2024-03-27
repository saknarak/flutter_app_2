import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final students = [];
    for (int i = 0; i < 100; i++) {
      students.add({
        'code': '6300$i',
        'name': 'Student ${i + 1}',
      });
    }

    // final studentList = <Widget>[];
    // for (int i = 0; i < students.length; i++) {
    //   studentList.add(Text('Name=${students[i]['name']}'));
    // }
    return Scaffold(
      appBar: AppBar(title: Text('hello')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            // dense: true,
            leading: Icon(Icons.account_box),
            title: Text(students[index]['name']),
            subtitle: Text(students[index]['code']),
            trailing: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          );
          // return Text('Name=${students[index]['name']}');
        },
      ),
    );
  }
}
