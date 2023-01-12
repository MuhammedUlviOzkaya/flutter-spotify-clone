// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './album_card.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recently Played',
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                children: [
                  Icon(Icons.history),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.settings),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              AlbumCard(
                'Code Mode',
                AssetImage('assets/images/a2.jpg'),
              ),
              AlbumCard(
                'Hot Mode',
                AssetImage('assets/images/a1.jpg'),
              ),
              AlbumCard(
                'Hype Mode',
                AssetImage('assets/images/a3.png'),
              ),
              AlbumCard(
                'Run Mode',
                AssetImage('assets/images/a4.jpg'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
