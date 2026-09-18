import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/home/home_view_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets + Material 3')),
      body: const HomeViewWidget(),
    );
  }
}
