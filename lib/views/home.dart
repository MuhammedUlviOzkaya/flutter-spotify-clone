// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../widgets/album_card.dart';
import '../widgets/playlist_builder.dart';
import '../widgets/row_album_card.dart';
import '../widgets/recently_played.dart';
import '../widgets/mini_playlists.dart';
import '../widgets/recent_listening.dart';
import '../widgets/background.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Background(),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RecentlyPlayed(),
                  MiniPlaylists(),
                  RecentListening(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
