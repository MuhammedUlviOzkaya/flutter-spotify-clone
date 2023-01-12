// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './playlist_builder.dart';

class RecentListening extends StatelessWidget {
  const RecentListening({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Based on your recent listening",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              PlaylistBuilder(
                AssetImage("assets/images/a6.jpg"),
                "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              ),
              SizedBox(width: 16),
              PlaylistBuilder(
                AssetImage("assets/images/a11.jpg"),
                "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              ),
              SizedBox(width: 16),
              PlaylistBuilder(
                AssetImage("assets/images/a10.jpg"),
                "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              ),
              SizedBox(width: 16),
              PlaylistBuilder(
                AssetImage("assets/images/a12.jpg"),
                "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              ),
              SizedBox(width: 16),
            ],
          ),
        )
      ],
    );
  }
}
