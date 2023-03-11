import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/common/vstack.dart';
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

class CalendarForm extends StatefulWidget {
  const CalendarForm({Key? key}) : super(key: key);

  @override
  _CalendarFormState createState() => _CalendarFormState();
}

class _CalendarFormState extends State<CalendarForm> {
  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    return VStack(children: [
      Padding(
          padding: EdgeInsets.all(Insets.lg),
          child: CustomForm(
            fields: calendarForm,
            spacing: Insets.lg,
            submitButtonChild: const Text(
              "Calculate",
              style: TextStyles.buttonText1,
            ),
            onSubmit: (value) {
              setState(() {
                this.data = value;
              });
            },
          )),
      Text(jsonEncode(data))
    ]);
  }
}
