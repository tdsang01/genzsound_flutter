import 'package:flutter/material.dart';

class MyFavoriteSong extends StatelessWidget {
  const MyFavoriteSong({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.favorite_border,
          size: 30,
          color: Colors.white70,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Favorite Songs',
          style: TextStyle(
              color: Colors.white70, fontSize: 22, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
