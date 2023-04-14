import 'package:flutter/material.dart';

import '../models/simple_recipe.dart';

class RecipeThumbnail extends StatelessWidget {
  RecipeThumbnail({Key? key, required this.recipe}) : super(key: key);

  final SimpleRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
                child: Image(
              image: AssetImage(recipe.dishImage),
              fit: BoxFit.cover,
            )),
          ),
          Text(recipe.title,
              maxLines: 1, style: Theme.of(context).textTheme.bodyText1),
          Text(recipe.duration,
              style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}
