import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StarTab extends StatelessWidget {
  const StarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('WELCOME'),
        TextButton(
          onPressed: () {
            context.push('/student');
          },
          child: Text('Go to Students'),
        ),
        TextButton(
          onPressed: () {
            context.push('/teacher');
          },
          child: Text('Go to Teacher'),
        ),
      ],
    );
  }
}
