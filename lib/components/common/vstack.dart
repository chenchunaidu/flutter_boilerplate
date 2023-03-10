import 'package:flutter/material.dart';

class VStack extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double spacing;

  const VStack({
    Key? key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.spacing = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children
          .asMap()
          .map((index, child) => MapEntry(
              index,
              Column(
                children: [
                  child,
                  if (index != children.length - 1) SizedBox(height: spacing),
                ],
              )))
          .values
          .toList(),
    );
  }
}
