import 'package:flutter/material.dart';

class MyHomeButton extends StatelessWidget {
  const MyHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(children: [
          Icon(
            Icons.home,
            size: 40,
            color: Colors.white70,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Home',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}
