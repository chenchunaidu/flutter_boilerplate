import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './custom-text-form-field-props.dart';

typedef CustomFormFieldProps = Map<String, dynamic>;
typedef CustomFormFieldSetter = void Function(String? newValue, String key);

enum FormFieldType { text, image, date }

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.props,
    this.onSaved,
  }) : super(key: key);

  final CustomFormFieldProps props;
  final CustomFormFieldSetter? onSaved;

  @override
  Widget build(BuildContext context) {
    if (props["type"] == FormFieldType.text) {
      var formFieldData = CustomTextFormFieldProps.fromJson(props);
      return TextFormField(
        onSaved: (value) {
          onSaved!(value, formFieldData.name);
        },
        keyboardType: formFieldData.keyboardType,
        validator: formFieldData.validator,
        obscureText: formFieldData.obscureText ?? false,
        autocorrect: formFieldData.autocorrect ?? false,
        decoration: formFieldData.decoration!.copyWith(
            hintText: formFieldData.placeholder,
            helperText: formFieldData.helperText),
      );
    }
    return Container();
  }
}
