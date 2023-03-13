import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateButton extends StatelessWidget {
  TranslateButton({Key? key, required this.locale, required this.label})
      : super(key: key);

  final Locale locale;
  final String label;
  GetStorage storage = GetStorage();
  onClick() {
    storage.write("locale-language", locale.languageCode);
    storage.write("locale-country", locale.countryCode);
    Get.updateLocale(locale);
    Get.toNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(label),
    );
  }
}
