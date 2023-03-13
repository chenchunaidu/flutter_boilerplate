import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/vstack.dart';
import 'package:flutter_boilerplate/components/translate/translate-buttons.dart';

class Translate extends StatelessWidget {
  const Translate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TranslateButtons(),
    );
  }
}
