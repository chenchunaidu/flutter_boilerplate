import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_IN': {
          'Welcome to\nFlutter boilerplate': 'Welcome to\nFlutter boilerplate',
          'Sign in to Flutter boilerplate to check all features':
              "Sign in to Flutter boilerplate to check all features",
          "Email": "Email",
          "Send OTP": "Send OTP"
        },
        'hi_IN': {
          'Welcome to\nFlutter boilerplate':
              'फ्लटर बायोलरप्लेट में आपका स्वागत है',
          "Sign in to Flutter boilerplate to check all features":
              "सभी सुविधाओं की जांच करने के लिए फ़्लटर बॉयलरप्लेट में साइन इन करें",
          "Email": "ईमेल",
          "Send OTP": "OTP भेजें"
        }
      };
}
