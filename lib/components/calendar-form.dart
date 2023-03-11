import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/inset.dart';

import '../theme/font.dart';
import 'common/form/custom-form-field.dart';
import 'common/form/index.dart';

var calendarForm = [
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
  {
    "type": FormFieldType.row,
    "fields": [
      {
        "type": FormFieldType.text,
        "name": "principleAmount",
        "placeholder": "Principle",
      },
      {
        "type": FormFieldType.text,
        "name": "interestRate",
        "placeholder": "Interest rate",
      },
    ]
  },
  {
    "type": FormFieldType.checkbox,
    "name": "compound",
    "title": "Compound interest",
  },
];

class CalendarForm extends StatelessWidget {
  const CalendarForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(Insets.lg),
        child: CustomForm(
          fields: calendarForm,
          spacing: Insets.lg,
          submitButtonChild: const Text(
            "Calculate",
            style: TextStyles.buttonText1,
          ),
          onSubmit: (value) {
            print(value);
          },
        ));
  }
}
