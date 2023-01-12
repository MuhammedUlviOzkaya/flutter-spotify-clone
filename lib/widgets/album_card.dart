import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String title;
  final ImageProvider image;
  const AlbumCard(this.title, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: image,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title),
          ],
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
