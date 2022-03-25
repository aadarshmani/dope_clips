import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

void playClip(familyMemberName) {
  final player = AudioCache();
  player.play('$familyMemberName.mp3');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('The Harry potter Family'),
          ),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      child: Image.asset('assets/magonacall.png'),
                      onPressed: () {
                        playClip('magonacall');
                      },
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      child: Image.asset('assets/sortinghat.png'),
                      onPressed: () {
                        playClip('sorting_hat');
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      child: Image.asset('assets/weasley.png'),
                      onPressed: () {
                        playClip('weasley');
                      },
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      child: Ink.image(
                        image: AssetImage('assets/harrry.png'),
                        height: 500,
                        width: 500,
                        fit: BoxFit.cover,
                      ),
                      onPressed: () {
                        playClip('harrry');
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      child: Image.asset('assets/hermione.png'),
                      onPressed: () {
                        playClip('hermione');
                      },
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      child: Image.asset('assets/dumbledore.png'),
                      onPressed: () {
                        playClip('dumbledore');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}
