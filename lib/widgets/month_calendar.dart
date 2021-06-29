import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ulogi_calendar_ui/core/constants/app_constants.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:ulogi_calendar_ui/data/data_source.dart';
import 'package:flutter/material.dart';

class MonthCalendar extends StatelessWidget {

  final CalendarController controller;
  final Function(CalendarSelectionDetails) onSelectionChanged;

  MonthCalendar({Key key,@required this.controller, @required this.onSelectionChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(fontSize: 18 * context.textScaleFactor, fontWeight: FontWeight.w400, color: Colors.black);
    return Container(
      height: context.dynamicHeight(0.45),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        padding: context.pagePadding,
        child: SfCalendar(
          onSelectionChanged: onSelectionChanged,
          controller: controller,
          view: CalendarView.month,
          headerHeight: 0,
          cellBorderColor: Colors.transparent,
          firstDayOfWeek: 1,
          viewHeaderStyle: ViewHeaderStyle(
              dayTextStyle: style.copyWith(fontSize: 11 * context.textScaleFactor, fontWeight: FontWeight.w500)
          ),
          todayHighlightColor: Colors.amber,
          selectionDecoration: BoxDecoration(
            //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(AppConstants.BORDER_RADIUS),
              border: Border.all(width: 2, color: AppConstants.SECONDARY_COLOR),
              //borderRadius: BorderRadius.circular(5)
          ),
          dataSource: DummyData.getCalendarDataSource(),
          viewNavigationMode: ViewNavigationMode.none,
          monthViewSettings: MonthViewSettings(
              numberOfWeeksInView: 5,
              appointmentDisplayCount: 4,
              appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
              monthCellStyle: MonthCellStyle(
                  textStyle: style,
                trailingDatesTextStyle: TextStyle(color: Colors.transparent),
                leadingDatesTextStyle: TextStyle(color: Colors.transparent)
              )
          ),

        ),
      ),
    );
  }
}