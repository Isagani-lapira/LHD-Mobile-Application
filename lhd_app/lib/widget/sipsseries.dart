import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SIPThumbnail extends StatefulWidget {
  final String youtubeLink;
  const SIPThumbnail({super.key, required this.youtubeLink});

  @override
  State<SIPThumbnail> createState() => _SIPThumbnailState();
}

class _SIPThumbnailState extends State<SIPThumbnail> {
  late String videoId;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.youtubeLink).toString();

    _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
    );
  }
}
