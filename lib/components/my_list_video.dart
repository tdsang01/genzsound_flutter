import 'package:flutter/material.dart';
import 'package:genzsound/components/view_item.dart';
import 'package:genzsound/models/video.model.dart';

class MyListVideo extends StatefulWidget {
  final Function()? onTap;

  List<VideoModel> videos;

  MyListVideo({super.key, required this.videos, required this.onTap});

  @override
  State<MyListVideo> createState() => _MyListVideoState();
}

class _MyListVideoState extends State<MyListVideo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.videos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: VideoItem(
              video: widget.videos[index],
              onTap: widget.onTap,
            ),
          );
        },
      ),
    );
  }
}
