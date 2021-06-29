import 'package:ulogi_calendar_ui/core/extension/date_time_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ulogi_calendar_ui/data/data_source.dart';
import 'event_calendar.dart';
import 'event_chips.dart';
import 'month_calendar.dart';

class CalendarBody extends StatefulWidget {
  final CalendarController monthController;
  final CalendarController appointmentController;

  CalendarBody({Key key, this.monthController, this.appointmentController}) : super(key: key);

  @override
  _CalendarBodyState createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {
  bool isChipShow = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MonthCalendar(controller: widget.monthController, onSelectionChanged: (details) {
          widget.appointmentController.displayDate = details.date;
          setState(() {
            if(details.date == DateTime.now().date) isChipShow = true;
            else isChipShow = false;
          });
        },),
        Visibility(child: EventChips(), visible: isChipShow),
        EventCalendar(controller: widget.appointmentController,)
      ],
    );
  }
}
