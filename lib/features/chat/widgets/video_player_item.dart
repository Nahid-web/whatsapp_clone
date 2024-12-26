import 'package:cached_video_player_plus/cached_video_player_plus.dart';
import 'package:flutter/material.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerItem({super.key, required this.videoUrl});

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late CachedVideoPlayerPlusController videoPlayerPlusController;
  bool isPlay = true;

  @override
  void initState() {
    super.initState();
    videoPlayerPlusController = CachedVideoPlayerPlusController.networkUrl(
      Uri.parse(widget.videoUrl),
      invalidateCacheIfOlderThan: const Duration(days: 69),
    )..initialize().then((value) {
        videoPlayerPlusController.setVolume(1);
      });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerPlusController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          CachedVideoPlayerPlus(videoPlayerPlusController),
          Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                if (isPlay) {
                  videoPlayerPlusController.play();
                } else {
                  videoPlayerPlusController.pause();
                }
                setState(() {
                  isPlay = !isPlay;
                });
              },
              icon: Icon(isPlay ? Icons.play_circle : Icons.pause_circle),
            ),
          ),
        ],
      ),
    );
  }
}
