import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  
  double dynamicWidth(factor) => factor * width;
  double dynamicHeight(factor) => factor * height;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  SizedBox get lowHighSpace => SizedBox(height: this.dynamicHeight(0.006),);
  SizedBox get lowWidthSpace => SizedBox(width: this.dynamicWidth(0.01),);

  EdgeInsetsGeometry get lowMargin => EdgeInsets.symmetric(horizontal: this.dynamicWidth(0.05), vertical: this.dynamicHeight(0.01));
  EdgeInsetsGeometry get eventCalendarMargin => EdgeInsets.symmetric(vertical: this.dynamicHeight(0.02));
  EdgeInsetsGeometry get eventChipMargin => EdgeInsets.symmetric(horizontal: this.dynamicWidth(0.03), vertical: this.dynamicHeight(0.01));

  EdgeInsetsGeometry get lowPadding => EdgeInsets.symmetric(horizontal: this.dynamicWidth(0.01));
  EdgeInsetsGeometry get mediumPadding => EdgeInsets.symmetric(horizontal: this.dynamicWidth(0.04) , vertical: this.dynamicHeight(0.005));
  EdgeInsetsGeometry get pagePadding => EdgeInsets.only(left: this.dynamicWidth(0.02), right: this.dynamicWidth(0.02) , top: this.dynamicHeight(0.03));
}