// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './row_album_card.dart';

class MiniPlaylists extends StatelessWidget {
  const MiniPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Good Evening',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 26),
              Row(
                children: [
                  RowAlbumCard(
                    "Top 50 - Global",
                    AssetImage("assets/images/a6.jpg"),
                  ),
                  SizedBox(width: 16),
                  RowAlbumCard(
                    "Best Mode",
                    AssetImage("assets/images/a8.jpg"),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  RowAlbumCard(
                    "RapCaviar",
                    AssetImage("assets/images/a7.jpg"),
                  ),
                  SizedBox(width: 16),
                  RowAlbumCard(
                    "Eminem",
                    AssetImage("assets/images/a9.jpg"),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  RowAlbumCard(
                    "For You",
                    AssetImage("assets/images/a10.jpg"),
                  ),
                  SizedBox(width: 16),
                  RowAlbumCard(
                    "Top 50",
                    AssetImage("assets/images/a11.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
