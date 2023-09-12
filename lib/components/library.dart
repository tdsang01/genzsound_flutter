import 'package:flutter/material.dart';

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.library_music,
          size: 30,
          color: Colors.white70,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Your Library',
          style: TextStyle(
              color: Colors.white70, fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
