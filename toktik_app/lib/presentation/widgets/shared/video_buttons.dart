import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik_app/config/helpers/human_formats.dart';
import 'package:toktik_app/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          icon: Icons.favorite,
          color: Colors.red,
          onPressed: () {}
        ),
        SizedBox(height: 15),
        _CustomIconButton(
          value: video.views,
          icon: Icons.remove_red_eye_outlined,
          color: Colors.white,
          onPressed: () {}
        ),
        SizedBox(height: 15),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 2),
          child: _CustomIconButton(
            value: 0,
            icon: Icons.play_circle_outline,
            color: Colors.white,
            onPressed: () {}
          )
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _CustomIconButton({
    required this.value,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color),
        ),
        if( value > 0)
        Text(HumanFormats.humanReadableNumber(value), style: const TextStyle(color: Colors.white))
      ],
    );
  }
}
