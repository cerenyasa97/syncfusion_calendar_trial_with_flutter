import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:ulogi_calendar_ui/data/data_source.dart';

import 'appointment_widget.dart';

class EventCalendar extends StatelessWidget {

  final CalendarController controller;

  const EventCalendar({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.eventCalendarMargin,
      height: context.height * 0.86,
      child: SfCalendar(
        controller: controller,
        timeSlotViewSettings: TimeSlotViewSettings(
          timeIntervalWidth: 100,
          timeFormat: 'HH:mm',
          startHour: 7,
          endHour: 24,
          timeTextStyle: TextStyle(
            fontSize: 16,
            color: Colors.black
          )
        ),
        appointmentBuilder: (context, appointmentDetails){
          return AppointmentWidget(appointmentDetails: appointmentDetails);
        },
        showCurrentTimeIndicator: false,
        dataSource: DummyData.getCalendarDataSource(),
        viewNavigationMode: ViewNavigationMode.none,
        viewHeaderHeight: 0,
        view: CalendarView.day,
        headerHeight: 0,
      ),
    );
  }
}
