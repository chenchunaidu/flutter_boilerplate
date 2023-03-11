import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/form/index.dart';
import 'package:flutter_boilerplate/theme/font.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'common/form/custom-form-field.dart';
import 'common/form/validators.dart';
import '../helpers/auth.dart';

var otpForm = [
  {
    "type": FormFieldType.text,
    "name": "otp",
    "placeholder": "OTP",
    "validator": ValidationBuilder(requiredMessage: "OTP is required").build(),
    "helperText": "OTP is 12345 😃",
    "autocorrect": false,
    "obscureText": true,
  }
];

class OTPForm extends StatelessWidget {
  OTPForm({Key? key}) : super(key: key);

  final login = Get.find<AuthController>().login;
  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: otpForm,
      onSubmit: (value) {
        print(value);
        if (value["otp"] == "12345") {
          login();
          Get.toNamed('/calendar');
        }
      },
      submitButtonChild: const Text(
        "Login",
        style: TextStyles.buttonText1,
      ),
    );
  }
}
