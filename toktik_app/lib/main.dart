import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/config/theme/app_theme.dart';
import 'package:toktik_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik_app/presentation/screens/discover/discover_screen.dart';
import 'package:toktik_app/presentation/providers/discover_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl( videoDatasource: LocalVideoDatasource() );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DiscoverProvider(videoRepository: videoPostRepository)..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: DiscoverScreen(),
      ),
    );
  }
}

//.. -> operador de cascada, permite encadenar llamadas a métodos en un objeto. En este caso, se llama al método loadNextPage() después de crear la instancia de DiscoverProvider.
