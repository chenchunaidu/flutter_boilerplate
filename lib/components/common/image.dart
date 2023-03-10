import 'package:flutter/material.dart';

class BorderedImage extends StatelessWidget {
  const BorderedImage(
      {Key? key,
      required this.url,
      this.width,
      this.height,
      this.borderRadius,
      this.fit,
      this.image})
      : super(key: key);

  final String url;
  final double? width;
  final double? height;
  final double? borderRadius;
  final BoxFit? fit;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image(
            width: width, height: height, fit: fit, image: NetworkImage(url)));
  }
}
