import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import '../../theme/inset.dart';
import './custom-text-form-field-props.dart';

typedef FormSubmitClick<T> = void Function(dynamic? value);

class CustomForm extends StatefulWidget {
  const CustomForm(
      {Key? key, required this.fields, this.submitButtonChild, this.onSubmit})
      : super(key: key);

  final CustomFormFields fields;
  final Widget? submitButtonChild;
  final FormSubmitClick? onSubmit;

  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  Map<String, dynamic> formData = {};

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: VStack(spacing: Insets.md, children: [
        VStack(
            children: widget.fields.map((e) {
          var formFieldData = CustomTextFormFieldProps.fromJson(e);
          // TODO: Support for date and image input types
          return TextFormField(
            onSaved: (newValue) {
              setState(() {
                formData[formFieldData.name] = newValue;
              });
            },
            keyboardType: formFieldData.keyboardType,
            validator: formFieldData.validator,
            obscureText: formFieldData.obscureText ?? false,
            autocorrect: formFieldData.autocorrect ?? false,
            decoration: formFieldData.decoration!.copyWith(
                hintText: formFieldData.placeholder,
                helperText: formFieldData.helperText),
          );
        }).toList()),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  widget.onSubmit!(formData);
                }
              },
              child: widget.submitButtonChild,
            ))
      ]),
    );
  }
}
