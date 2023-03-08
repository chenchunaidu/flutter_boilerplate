import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/form/validators.dart';

typedef CustomFormFields = List<Map<String, dynamic>>;

class CustomTextFormFieldProps<T> {
  final String? placeholder;
  // TODO: Allow generic properties;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final String name;
  final String? helperText;
  final bool? obscureText;
  final bool? autocorrect;

  CustomTextFormFieldProps(
      {this.placeholder,
      this.validator,
      this.keyboardType,
      this.decoration,
      required this.name,
      this.obscureText,
      this.helperText,
      this.autocorrect});

  factory CustomTextFormFieldProps.fromJson(Map<String, dynamic> json) =>
      CustomTextFormFieldProps(
          placeholder: json["placeholder"] as String,
          helperText: json["helperText"] as String?,
          validator: json["validator"] as FormFieldValidator<String>?,
          keyboardType: json["keyboardType"] as TextInputType?,
          decoration:
              json["decoration"] ?? InputDecoration() as InputDecoration?,
          name: json["name"] as String,
          obscureText: json["obscureText"] as bool?,
          autocorrect: json["autocorrect"] as bool?);
}
