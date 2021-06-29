import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DataSource extends CalendarDataSource {
  DataSource(List<Appointment> source) {
    appointments = source;
  }
}

class DummyData{
  static DataSource getCalendarDataSource() {
    final today = DateTime.now().day;
    final thisMonth = DateTime.now().month;
    final thisYear = DateTime.now().year;
    List<Appointment> appointments = <Appointment>[];
    appointments.add(
        Appointment(
            startTime: DateTime(thisYear, thisMonth, today, 9),
            endTime: DateTime(thisYear, thisMonth, today, 11, 30),
            isAllDay: false,
            subject: 'İzmir - 2 T Naranciye',
            notes: "35 VVK 33today5",
            color: Colors.blueAccent,
            startTimeZone: '',
            endTimeZone: ''
        ));
    appointments.add(
        Appointment(
            startTime: DateTime(thisYear, thisMonth, today, 14),
            endTime: DateTime(thisYear, thisMonth, today, 16),
            isAllDay: false,
            subject: 'Araç Muayene Günü',
            notes: "35 VVK 3345",
            color: Colors.amber,
            startTimeZone: '',
            endTimeZone: ''
        ));
    appointments.add(
        Appointment(
            startTime: DateTime(thisYear, thisMonth, today, 17),
            endTime: DateTime(thisYear, thisMonth, today, 19),
            isAllDay: false,
            subject: '₺ 2,750 Park Cezası',
            notes: "0thisMonth VAA 9923",
            color: Colors.red,
            startTimeZone: '',
            endTimeZone: ''
        ));
    appointments.add(
        Appointment(
            startTime: DateTime(thisYear, thisMonth, today, 20),
            endTime: DateTime(thisYear, thisMonth, today, 23),
            isAllDay: false,
            subject: 'Ankara - 5 T Bakliyat',
            notes: "35 VVK 3345",
            color: Colors.blueAccent,
            startTimeZone: '',
            endTimeZone: ''
        ));

    return DataSource(appointments);
  }
}