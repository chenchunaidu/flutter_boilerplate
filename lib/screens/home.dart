import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/theme/font.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Home screen",
            style: TextStyles.h2,
          ),
          Text(
            "You can change the text color globally by defining the textTheme and then adding the TextTheme widget. Inside the TextTheme widget, you can specify which type of text you want to change. for example, headline1, headline2, and so on, and then assign the color.",
            style: TextStyles.body1,
          )
        ]),
      ),
    );
  }
}
