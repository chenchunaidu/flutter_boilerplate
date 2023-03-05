import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/image.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:flutter_biolerlate/theme/inset.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(Insets.lg),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Heading 1",
              style: TextStyles.h1,
            ),
            const Text(
              "Heading 2",
              style: TextStyles.h2,
            ),
            const Text(
              "Heading 3",
              style: TextStyles.h3,
            ),
            Text(
              "Body",
              style: TextStyles.body1,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Submit",
                  style: TextStyles.buttonText1,
                )),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Dont' submit",
                  style: TextStyles.buttonText2,
                )),
            const BorderedImage(
                width: double.infinity,
                height: 400,
                fit: BoxFit.cover,
                url:
                    "https://images.unsplash.com/photo-1677577441193-6f798ed60b5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
          ]),
        ));
  }
}
