import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/hstack.dart';
import 'package:flutter_boilerplate/theme/inset.dart';

import '../vstack.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {Key? key,
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      String? title,
      bool initialValue = false})
      : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return VStack(children: [
                HStack(spacing: Insets.sm, children: [
                  Checkbox(
                      value: state.value,
                      onChanged: (value) {
                        state.didChange(value);
                      }),
                  Text(
                    title ?? "",
                  )
                ]),
                state.hasError
                    ? Text(
                        state.errorText ?? "",
                        style: TextStyle(color: Colors.red),
                      )
                    : Container()
              ]);
            });
}
