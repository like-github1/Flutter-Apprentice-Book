import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe Trends',
                  style: FooderlichTheme.lightTextTheme.displaySmall,
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    children: [
                      Chip(
                        label: Text(
                          'Healthy',
                          style: FooderlichTheme.lightTextTheme.displaySmall,
                        ),
                        onDeleted: () {},
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Healthy',
                          style: FooderlichTheme.lightTextTheme.displaySmall,
                        ),
                        onDeleted: () {},
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Healthy',
                          style: FooderlichTheme.lightTextTheme.displaySmall,
                        ),
                        onDeleted: () {},
                        backgroundColor: Colors.black.withOpacity(0.7),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
