import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {
 CircleImage({  required this.imageProvider,
  required this.ImageRadius, Key? key}):super(key: key);
   ImageProvider imageProvider;
   double  ImageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: ImageRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundImage: imageProvider, radius: ImageRadius-5,),
    );
  }
}