import 'package:flutter/material.dart';

import '../theme/font.dart';
import 'common/form/custom-form-field.dart';
import 'common/form/index.dart';

List<Map<String, dynamic>> calendarForm = [
  {
    "type": FormFieldType.date,
    "name": "startDate",
    "placeholder": "Start Date",
  },
  {
    "type": FormFieldType.date,
    "name": "endDate",
    "placeholder": "End Date",
  },
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
      onSubmit: (value) {
        print(value);
      },
    );
  }
}
