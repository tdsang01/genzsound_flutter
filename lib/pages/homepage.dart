import 'package:flutter/material.dart';
import 'package:genzsound/components/favorite_song.dart';
import 'package:genzsound/components/home_button.dart';
import 'package:genzsound/components/library.dart';
import 'package:genzsound/components/logo.dart';
import 'package:genzsound/components/my_list_video.dart';
import 'package:genzsound/components/search_box.dart';
import 'package:genzsound/models/video.model.dart';
import 'package:genzsound/pages/play_video.dart';
import 'package:genzsound/services/youtube.service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isLoading = false;
  bool _isPlayingVideo = false;
  List<VideoModel> videos = [];
  String videoId = '';

  TextEditingController? searchController;
  // YoutubePlayerController videoController = YoutubePlayerController(
  //   initialVideoId: 'lNQJNImBsKY',
  // );

  @override
  void initState() {
    videoId = 'lNQJNImBsKY';
    setState(() {});
    super.initState();
  }

  _getDataFromAPI(searchText) async {
    try {
      _isLoading = true;
      videos = await YoutubeService.searchVideo(searchText);
      _isLoading = false;
      setState(() {});
    } catch (e) {
      // print(e.toString());
    }
  }

  void playVideo() {
    _isPlayingVideo = true;
    setState(() {});
  }

  handleSearch(String text) {
    _isLoading = true;
    setState(() {});
    _getDataFromAPI(text);
  }

  handlePlayingVideo(videoId) {
    print(videoId);
    _isPlayingVideo = true;
    videoId = videoId;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(),
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // logo
                const MyLogo(),

                // divider
                Divider(color: Colors.grey[100]),

                const SizedBox(height: 10),

                // Home button
                const MyHomeButton(),

                const SizedBox(height: 20),

                // search box
                MySearchBar(
                  onSearch: handleSearch,
                ),

                // library
                const SizedBox(height: 30),
                const MyLibrary(),

                // favorite song
                const SizedBox(height: 30),
                const MyFavoriteSong(),

                const SizedBox(height: 30),
                Divider(color: Colors.grey[100]),

                // playing video
                PlayVideo(
                  videoId: videoId,
                ),

                // list videos
                // MyListVideo(
                //   videos: videos,
                //   onTap: () {},
                // ),'
                _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : MyListVideo(videos: videos, onTap: playVideo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
