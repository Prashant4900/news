import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/config/meta/constant.dart';
import 'package:news/views/widgets/components/layer_view.dart';

class MyAllPageWidget extends StatefulWidget {
  const MyAllPageWidget({Key? key}) : super(key: key);

  @override
  State<MyAllPageWidget> createState() => _MyAllPageWidgetState();
}

class _MyAllPageWidgetState extends State<MyAllPageWidget> {
  /// Compulsory
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.PAUSED;
  String url = Articles.audioEng;

  /// Optional
  int timeProgress = 0;
  int audioDuration = 0;

  int? currentIndex;

  @override
  void initState() {
    super.initState();

    /// Compulsory
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        audioPlayerState = state;
      });
    });

    /// Optional
    audioPlayer.setUrl(
        url); // Triggers the onDurationChanged listener and sets the max duration string
    audioPlayer.onDurationChanged.listen((Duration duration) {
      setState(() {
        audioDuration = duration.inSeconds;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration position) async {
      setState(() {
        timeProgress = position.inSeconds;
      });
    });
  }

  /// Compulsory
  @override
  void dispose() {
    audioDispose();
    super.dispose();
  }

  audioDispose() {
    audioPlayer.release();
    audioPlayer.dispose();
  }

  /// Compulsory
  playMusic() async {
    // Add the parameter "isLocal: true" if you want to access a local file
    await audioPlayer.play(url);
  }

  /// Compulsory
  pauseMusic() async {
    await audioPlayer.pause();
  }

  /// Optional
  String getTimeString(int seconds) {
    String minuteString =
        '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
    String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
    return '$minuteString:$secondString'; // Returns a string with the format mm:ss
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        allowImplicitScrolling: true,
        itemBuilder: (context, index) {
          currentIndex = index;
          if (currentIndex != index) {
            audioDispose();
            currentIndex = index;
          }
          return LayerViewWidget(id: index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          try {
            audioPlayerState == PlayerState.PLAYING
                ? pauseMusic()
                : playMusic();
          } catch (e) {
            if (kDebugMode) {
              print("e $e");
            }
          }
        },
        child: Icon(
          audioPlayerState == PlayerState.PLAYING
              ? Icons.pause_rounded
              : Icons.play_arrow_rounded,
        ),
      ),
    );
  }
}
