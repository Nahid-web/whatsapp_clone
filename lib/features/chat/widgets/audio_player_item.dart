import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerItem extends StatefulWidget {
  final String message;
  const AudioPlayerItem({super.key, required this.message});

  @override
  State<AudioPlayerItem> createState() => _AudioPlayerItemState();
}

class _AudioPlayerItemState extends State<AudioPlayerItem> {
  bool isPlaying = false;
  final AudioPlayer audioPlayer = AudioPlayer();

  void audioControl() async {
    if (isPlaying) {
      await audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      await audioPlayer.play(UrlSource(widget.message));
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: audioControl,
      constraints: const BoxConstraints(minWidth: 100),
      icon: Icon(
        isPlaying ? Icons.pause_circle : Icons.play_circle,
      ),
    );
  }
}
