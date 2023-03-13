import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/translate/translate-button.dart';

import '../../theme/inset.dart';
import '../common/vstack.dart';

var translateButtonsData = [
  TranslateButton(locale: Locale('en', 'IN'), label: "English"),
  TranslateButton(locale: Locale('hi', 'IN'), label: "हिंदी ")
];

class TranslateButtons extends StatelessWidget {
  const TranslateButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text('Choose your language'),
      VStack(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: Insets.sm,
        children: translateButtonsData
            .map((e) => TranslateButton(locale: e.locale, label: e.label))
            .toList(),
      )
    ]);
  }
}
