import 'package:flutter/material.dart';

import '../theme/font.dart';
import 'form/custom-form-field.dart';
import 'form/index.dart';

List<Map<String, dynamic>> calendarForm = [
  {
    "type": FormFieldType.date,
    "name": "date",
    "placeholder": "Date",
  }
];

class CalendarForm extends StatelessWidget {
  const CalendarForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: calendarForm,
      submitButtonChild: const Text(
        "Submit",
        style: TextStyles.buttonText1,
      ),
    );
  }
}
