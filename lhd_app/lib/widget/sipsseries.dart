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

    _controller.addListener(_onFullScreen);
  }

  void _onFullScreen() {
    if (_controller.value.isFullScreen) {
      _controller.pause();
      _controller.toggleFullScreenMode();
      showDialog(
          context: context,
          builder: (context) {
            return FullScreenVideo(videoID: videoId);
          });
    }
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

// dialog full screen
class FullScreenVideo extends StatefulWidget {
  final String videoID;
  const FullScreenVideo({super.key, required this.videoID});

  @override
  State<FullScreenVideo> createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoID,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
        ));

    _controller.toggleFullScreenMode(); //full screen automatically
    _controller.addListener(closeFullScreen);
  }

  void closeFullScreen() {
    if (!_controller.value.isFullScreen) {
      Navigator.pop(
          context); //close video player once click the minimize screen
    }
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
