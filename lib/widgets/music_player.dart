import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isPlaying = false;
  int currentSongIndex = 0;
  final List<String> songs = ['Love Story', 'Perfect', 'All of Me'];

  void play() {
    setState(() {
      isPlaying = true;
    });
  }

  void pause() {
    setState(() {
      isPlaying = false;
    });
  }

  void nextSong() {
    setState(() {
      currentSongIndex = (currentSongIndex + 1) % songs.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[  
          Text(
            'Now Playing: ${songs[currentSongIndex]}',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, size: 30, color: Colors.white),
            onPressed: () {
              isPlaying ? pause() : play();
            },
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(Icons.skip_next, size: 30, color: Colors.white),
            onPressed: nextSong,
          ),
        ],
      ),
    );
  }
}