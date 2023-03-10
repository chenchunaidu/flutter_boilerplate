import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
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
    } else if (props["type"] == FormFieldType.date) {
      var formFieldData = CustomTextFormFieldProps.fromJson(props);
      return DateTimePicker(
        initialValue: '',
        dateHintText: formFieldData.placeholder,
        validator: formFieldData.validator,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        onSaved: (value) {
          onSaved!(value, formFieldData.name);
        },
      );
    }
    return Container();
  }
}
