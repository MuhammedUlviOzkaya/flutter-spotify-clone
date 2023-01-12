import 'package:flutter/material.dart';

class PlaylistBuilder extends StatelessWidget {
  final ImageProvider image;
  final String artists;
  PlaylistBuilder(this.image, this.artists);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              artists,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
