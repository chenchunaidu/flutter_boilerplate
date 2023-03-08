import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import '../layout/auth.dart';
import '../theme/font.dart';
import '../theme/inset.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  var login = Get.find<AuthController>().login;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: VStack(spacing: Insets.md, children: [
        TextFormField(
          validator: ValidationBuilder(requiredMessage: "Email is required")
              .email("Please enter your email address")
              .maxLength(50)
              .build(),
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(hintText: "Email"),
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Get.toNamed('/otp');
                }
              },
              child: const Text(
                "Sent OTP",
                style: TextStyles.buttonText1,
              ),
            ))
      ]),
    );
  }
}
