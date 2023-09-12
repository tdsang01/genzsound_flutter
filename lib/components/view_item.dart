import 'package:flutter/material.dart';
import 'package:genzsound/models/video.model.dart';

class VideoItem extends StatelessWidget {
  final VideoModel video;
  final Function()? onTap;

  const VideoItem({
    super.key,
    required this.video,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Image.network(
              video.coverUrl,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text(
              video.name,
              style: const TextStyle(
                color: Colors.white60,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
