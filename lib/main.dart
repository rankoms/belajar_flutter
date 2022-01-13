import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:au';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = '00:00:00';
  AudioPlayer? audioPlayer;
  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer?.onAudioPositionChanged.listen((Duration) {
      setState(() {
        durasi = Duration.toString();
      });
    });
    audioPlayer?.setReleaseMode(ReleaseMode.LOOP);
  }
  void playSound(String url) async {
    await audioPlayer?.play(url);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player sd'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      playSound('asdfa');
                    });
                  },
                  child: Text('Play')),
              ElevatedButton(onPressed: () {}, child: Text('Pause')),
              ElevatedButton(onPressed: () {}, child: Text('Stop')),
              ElevatedButton(onPressed: () {}, child: Text('Resume')),
              Text(durasi)
            ],
          ),
        ),
      ),
    );
  }
}
