

import 'package:toktik_app/domain/datasource/video_posts_datasource.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource videoDatasource;

  VideoPostsRepositoryImpl({required this.videoDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUserId(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage({required int page}) {
    return videoDatasource.getTrendingVideosByPage(page: page);
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}