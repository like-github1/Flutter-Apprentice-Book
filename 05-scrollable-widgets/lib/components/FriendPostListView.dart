// ignore: file_names


// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  FriendPostListView({Key? key, required this.friendspost}) : super(key: key);

  final List<Post> friendspost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Social Chefs ! ', style: Theme.of(context).textTheme.headline1),
          // 5
          const SizedBox(height: 16),
          ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              // 4
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, index) {
                final posts = friendspost[index];
                return FriendPostTile(
                  post: posts,
                );
              },
              separatorBuilder: (BuildContext context, index) {
                return SizedBox(
                  height: 16,
                );
              },
              itemCount: friendspost.length)
        ],
      ),
    );
  }
}
