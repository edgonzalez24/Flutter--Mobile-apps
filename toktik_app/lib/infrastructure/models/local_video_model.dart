import 'package:toktik_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int? likes;
  final int? views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes,
    this.views,
  });


  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'] as String,
    videoUrl: json['videoUrl'] as String,
    likes: json['likes'] as int?,
    views: json['views'] as int?,
  );


  VideoPost toVideoPostEntity() => VideoPost(
    caption: name,
    videoUrl: videoUrl,
    likes: likes ?? 0,
    views: views ?? 0,
  );
}
