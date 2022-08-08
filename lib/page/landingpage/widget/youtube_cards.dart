import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class YouTubeCards extends StatefulWidget {
  final String youtubeURL;

  const YouTubeCards({
    Key? key,
    required this.youtubeURL
  }) : super(key: key); 
  @override
  _YouTubeCardsState createState() => _YouTubeCardsState();
}

class _YouTubeCardsState extends State<YouTubeCards> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
      params: const YoutubePlayerParams(
        loop: true,
        color: 'blue',
        desktopMode: false,
        showFullscreenButton: true,
        showVideoAnnotations: false,
        showControls: true,
        origin: 'https://www.youtube.com',
      )
    );
    super.initState();    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 355,
      child: YoutubePlayerIFrame(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}