import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:ulogi_calendar_ui/core/components/project_text.dart';
import 'package:ulogi_calendar_ui/core/constants/image_constants.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class AppointmentWidget extends StatelessWidget {

  final CalendarAppointmentDetails appointmentDetails;

  const AppointmentWidget({Key key, this.appointmentDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle subjectStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
    final TextStyle notesStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15);
    return Container(
      margin: context.lowPadding,
      padding: context.eventChipMargin,
      decoration: BoxDecoration(
          color: appointmentDetails.appointments.first.color,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getImage(appointmentDetails.appointments.first.color),
          context.lowWidthSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProjectText(text: appointmentDetails.appointments.first.subject, style: subjectStyle,),
              context.lowHighSpace,
              ProjectText(text: appointmentDetails.appointments.first.notes, style: notesStyle,)
            ],
          )
        ],
      ),
    );
  }

  _getImage(Color color) {
    String imagePath;
    if(color == Colors.amber) imagePath = ImageConstants.INFO;
    else if(color == Colors.blue) imagePath = ImageConstants.GPS;
    else if(color == Colors.red) imagePath = ImageConstants.TICKET;
    else imagePath = ImageConstants.INFO;
    return Image.asset(imagePath);
  }
}
