import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import '../layout/auth.dart';
import '../theme/font.dart';
import '../theme/inset.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final _formKey = GlobalKey<FormState>();
  var login = Get.find<AuthController>().login;
  Map<String, dynamic> formData = new Map();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: VStack(
            spacing: Insets.lg,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onSaved: (value) {
                  setState(() {
                    formData["otp"] = value;
                  });
                },
                validator: ValidationBuilder(requiredMessage: "OTP is required")
                    .build(),
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    hintText: "Password", helperText: "OTP is 12345 😃"),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        if (formData["otp"] == "12345") {
                          login();
                          Get.toNamed('/home');
                        }
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyles.buttonText1,
                    ),
                  ))
            ]));
  }
}
