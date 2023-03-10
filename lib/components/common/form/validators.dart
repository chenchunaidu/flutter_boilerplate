import 'package:form_validator/form_validator.dart';

class CustomValidators {
  var emailValidator = ValidationBuilder(requiredMessage: "Email is required")
      .email("Please enter your email address")
      .maxLength(50)
      .build;
}
