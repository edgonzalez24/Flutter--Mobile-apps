import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/infrastructure/models/local_video_model.dart';
import 'package:toktik_app/shared/data/local_video_posts.dart' as local_data;

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videoPosts = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = local_data.videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videoPosts.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
