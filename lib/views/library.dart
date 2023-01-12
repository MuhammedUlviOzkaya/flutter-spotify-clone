// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './album_view.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AlbumView(AssetImage('assets/images/a1.jpg')),
      ),
    );
    ;
  }
}
