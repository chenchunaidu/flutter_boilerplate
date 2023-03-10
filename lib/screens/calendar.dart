import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/calendar-form.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CalendarForm(),
    );
  }
}
