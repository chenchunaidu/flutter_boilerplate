import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/form/validators.dart';

class CheckboxFormFieldModel {
  final String? title;
  final FormFieldValidator<bool>? validator;
  final String name;

  CheckboxFormFieldModel({
    this.title,
    this.validator,
    required this.name,
  });
  // TODO: Type safety for map
  factory CheckboxFormFieldModel.fromJson(Map<String, dynamic> json) =>
      CheckboxFormFieldModel(
        title: json["title"] as String,
        validator: json["validator"] as FormFieldValidator<bool>?,
        name: json["name"] as String,
      );
}
