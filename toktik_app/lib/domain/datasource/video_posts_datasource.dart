// Crear clases abstracta por que no quiero que se pueda instanciar la clase, solo quiero que se pueda heredar de ella

import 'package:toktik_app/domain/entities/video_post.dart';

abstract class VideoPostDatasource {


  //Future = Promises in javascript
  Future<List<VideoPost>> getTrendingVideosByPage({required int page});

  Future<List<VideoPost>> getFavoriteVideosByUser({required String userId});

}