import 'package:ulogi_calendar_ui/core/constants/app_constants.dart';
import 'package:ulogi_calendar_ui/core/constants/text_constants.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class EventChips extends StatefulWidget {
  EventChips({Key key}) : super(key: key);

  @override
  _EventChipsState createState() => _EventChipsState();
}

class _EventChipsState extends State<EventChips> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: context.eventChipMargin, child: Wrap(
      spacing: context.dynamicWidth(0.02),
      children: TextConstants.chipList.map((chip) =>  InputChip(
        onSelected: (isSelected) {},
        label: Text(chip.label),
        avatar: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(chip.image),
        ),
        backgroundColor: Colors.white,
        onDeleted: () {},
        disabledColor: Colors.white,
        deleteIcon: CircleAvatar(
          maxRadius: 10,
          minRadius: 10,
          child: Icon(Icons.close, size: 12, color: Colors.white,),
          backgroundColor: Colors.grey.shade600,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.CHIP_RADIUS),
            side: BorderSide(color: AppConstants.chipColor, width: 1)
        ),
      ))
          .toList(),
    )
      ,)    ;
  }
}
