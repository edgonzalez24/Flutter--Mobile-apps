import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/infrastructure/repositories/video_posts_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepositoryImpl videoRepository;
  bool initialLoading = true;
  List<VideoPost> videoPosts = [];

  DiscoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {

    final newVideos = await videoRepository.getTrendingVideosByPage(page: 1);

    videoPosts.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
