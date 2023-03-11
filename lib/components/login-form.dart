import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/form/custom-form-field.dart';
import 'package:flutter_boilerplate/components/common/form/index.dart';
import 'package:flutter_boilerplate/theme/font.dart';
import 'package:get/get.dart';
import 'common/form/validators.dart';

var loginForm = [
  {
    "type": FormFieldType.text,
    "name": "email",
    "placeholder": "Email",
    "validator": CustomValidators().emailValidator(),
    "keyboardType": TextInputType.emailAddress
  }
];

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: loginForm,
      onSubmit: (value) {
        Get.toNamed('/otp');
      },
      submitButtonChild: const Text(
        "Send OTP",
        style: TextStyles.buttonText1,
      ),
    );
  }
}
