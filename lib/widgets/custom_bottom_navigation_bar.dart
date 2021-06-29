import 'package:ulogi_calendar_ui/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:ulogi_calendar_ui/core/constants/app_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      selectedFontSize: context.textScaleFactor * 13,
      unselectedFontSize: context.textScaleFactor * 13,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: "İlanlar"),
        BottomNavigationBarItem(icon: Icon(Icons.upload_file), label: "Yüklemeler"),
        BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Raporlar"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      ],
      backgroundColor: AppConstants.PRIMARY_COLOR,
    );
  }
}
