class VideoModel {
  final String coverUrl;
  final String name;
  final String videoId;

  const VideoModel({
    required this.coverUrl,
    required this.name,
    required this.videoId,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    var thum = json['thumbnails'];
    var url = thum['url'];
    return VideoModel(
      coverUrl: url,
      name: json['name'],
      videoId: json['videoId'],
    );
  }
}
