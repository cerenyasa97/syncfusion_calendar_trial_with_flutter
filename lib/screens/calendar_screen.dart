import 'package:ulogi_calendar_ui/core/constants/scroll_widget_behavior.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulogi_calendar_ui/core/constants/app_constants.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ulogi_calendar_ui/widgets/calendar_body.dart';
import 'package:ulogi_calendar_ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:ulogi_calendar_ui/widgets/search_container.dart';


class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  String dropdownValue = AppConstants.MONTHS_OF_YEAR[DateTime.now().month-1];

  bool searchIsVisible = false;
  final CalendarController _monthController = CalendarController();
  final CalendarController _appointmentController = CalendarController();

  @override

  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(fontSize: 18 * context.textScaleFactor, fontWeight: FontWeight.w400, color: Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: AppConstants.SECONDARY_COLOR,
        onPressed: () {},
      ),
      drawer: Drawer(
        child: DrawerHeader(
          decoration: BoxDecoration(color: AppConstants.PRIMARY_COLOR),
          child: Container(),
        ),
      ),
      appBar: appBar,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: Stack(
          children: [
            CalendarBody(monthController: _monthController, appointmentController: _appointmentController,),
            Visibility(
              child: SearchContainer(),
              visible: searchIsVisible,
            )
          ],
        ),
      ),
    );
  }

  AppBar get appBar => AppBar(
      title: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: AppConstants.PRIMARY_COLOR,
          value: dropdownValue,
          style: TextStyle(color: Colors.white),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
          onChanged: (month) {
            setState(() {
              _monthController.displayDate = DateTime(2021, AppConstants.MONTHS_OF_YEAR.indexOf(month) + 1, 01);
              _appointmentController.displayDate = DateTime(2021, AppConstants.MONTHS_OF_YEAR.indexOf(month) + 1, 01);
              dropdownValue = month;
            });
          },
          items: AppConstants.MONTHS_OF_YEAR
              .map((month) => DropdownMenuItem(
                    child: Text(
                      month,
                      style: TextStyle(fontSize: 20),
                    ),
                    value: month,
                  ))
              .toList(),
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(Icons.search, size: AppConstants.APPBAR_ICON_SIZE,),
            onPressed: () {
              setState(() {
                searchIsVisible = !searchIsVisible;
              });
            }),
        PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(child: Text("First")),
                  PopupMenuItem(child: Text("Second"))
                ])
      ],
    );
}
