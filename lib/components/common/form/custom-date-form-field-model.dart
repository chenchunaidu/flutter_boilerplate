import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/form/validators.dart';

class CustomDateFormFieldModel {
  final String? placeholder;
  final FormFieldValidator<String>? validator;
  final String name;
  final String? helperText;

  CustomDateFormFieldModel({
    this.placeholder,
    this.validator,
    required this.name,
    this.helperText,
  });
  // TODO: Type safety for map
  factory CustomDateFormFieldModel.fromJson(Map<String, dynamic> json) =>
      CustomDateFormFieldModel(
        placeholder: json["placeholder"] as String,
        helperText: json["helperText"] as String?,
        validator: json["validator"] as FormFieldValidator<String>?,
        name: json["name"] as String,
      );
}
