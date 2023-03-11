import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/form/checkbox-form-field-model.dart';
import 'package:flutter_boilerplate/components/common/form/checkbox-form-field.dart';
import 'package:flutter_boilerplate/components/common/hstack.dart';
import './custom-text-form-field-model.dart';
import './custom-date-form-field-model.dart';

typedef CustomFormFieldProps = Map<String, dynamic>;
typedef CustomFormFieldSetter<T> = void Function(T? newValue, String key);

enum FormFieldType { text, image, date, row, checkbox }

enum Direction { vertical, horizontal }

List<Widget> generateFormFieldWidgets(
    {required List<CustomFormFieldProps> fields,
    CustomFormFieldSetter? onSaved,
    Direction? direction,
    double? width}) {
  if (direction == Direction.horizontal) {
    return fields.map((e) {
      return SizedBox(
        width: width,
        child: CustomFormField(props: e, onSaved: onSaved),
      );
    }).toList();
  }
  return fields.map((e) {
    return CustomFormField(props: e, onSaved: onSaved);
  }).toList();
}

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
      var formFieldData = CustomTextFormFieldModel.fromJson(props);
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
      var formFieldData = CustomDateFormFieldModel.fromJson(props);
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
    } else if (props["type"] == FormFieldType.row) {
      return HStack(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: generateFormFieldWidgets(
              fields: props["fields"],
              onSaved: onSaved,
              direction: Direction.horizontal,
              width: (MediaQuery.of(context).size.width /
                      props["fields"]!.length) *
                  0.9));
    } else if (props["type"] == FormFieldType.checkbox) {
      var formFieldData = CheckboxFormFieldModel.fromJson(props);
      return CheckboxFormField(
        title: formFieldData.title,
        onSaved: (value) {
          onSaved!(value, formFieldData.name);
        },
      );
    }

    return Container();
  }
}
