import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';

import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {required this.authorName,
      required this.title,
      required this.imageProvider,
      Key? key})
      : super(key: key);
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(imageProvider: imageProvider, ImageRadius: 28),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: FooderlichTheme.lightTextTheme.displayMedium,
              ),
              Text(
                title,
                style: FooderlichTheme.lightTextTheme.displaySmall,
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                const Snakbar = SnackBar(content: Text('Press your fevorite'));
                ScaffoldMessenger.of(context).showSnackBar(Snakbar);
              },
              iconSize: 20,
              icon: Icon(
                Icons.favorite_border_outlined,
              )),
        ],
      ),
    );
  }
}
