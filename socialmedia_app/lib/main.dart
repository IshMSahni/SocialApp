import 'package:flutter/material.dart';
import 'package:socialmedia_app/pages/loading.dart';
import 'package:socialmedia_app/pages/playerprofile.dart';
import 'package:socialmedia_app/pages/feed.dart';
import 'package:socialmedia_app/pages/videoplayer.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/feed',
    routes: {
      '/':(context) => Loading(),
      '/home': (context) => PlayerProfile(),
      '/feed': (context) => Feed(),
      '/videoplayer': (context) => VideoPlayerApp(),
    },
  ));
}

