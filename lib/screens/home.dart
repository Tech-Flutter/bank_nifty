import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/bankniftyvideo.mp4')
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: EdgeInsets.all(1.0),
              child: new Image.asset(
                'assets/slider.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
            child: Row(
              children: [
                // Two image view as child
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      margin: EdgeInsets.all(1.0),
                      child: new Image.asset(
                        'assets/bankniftysignals.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      margin: EdgeInsets.all(1.0),
                      child: new Image.asset(
                        'assets/tlem.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Container(
            child: Row(
          children: [
            // Two image view as child
            Flexible(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  child: new Image.asset(
                    'assets/privioussignals.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  child: new Image.asset(
                    'assets/ourpastperformance.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        )),
        Container(
          child: Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Scaffold(
                body: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.blueGrey,
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
