import 'package:ulogi_calendar_ui/core/constants/app_constants.dart';
import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.lowMargin,
        width: context.dynamicWidth(0.9),
        height: context.dynamicHeight(0.07),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(AppConstants.BORDER_RADIUS)),
        padding: context.mediumPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Center(
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  cursorColor: AppConstants.PRIMARY_COLOR,
                ),
              ),
              flex: 8,
            ),
            Flexible(
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: AppConstants.PRIMARY_COLOR,
              ),
              flex: 1,
            )
          ],
        ));
  }
}
