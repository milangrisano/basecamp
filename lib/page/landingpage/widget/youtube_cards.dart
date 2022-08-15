import 'package:basecamp/export.dart';
import 'package:flutter/material.dart';

class YouTubeCards extends StatefulWidget {
  final double height;
  final double width;
  final String youtubeURL;

  const YouTubeCards({
    Key? key,
    required this.youtubeURL,
    required this.height,
    required this.width
  }) : super(key: key); 
  @override
  _YouTubeCardsState createState() => _YouTubeCardsState();
}

class _YouTubeCardsState extends State<YouTubeCards> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayerController.convertUrlToId(widget.youtubeURL)!,
      params: const YoutubePlayerParams(
        autoPlay: false,
        loop: false,
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
      height: widget.height,
      width: widget.width,
      child: YoutubePlayerIFrame(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}