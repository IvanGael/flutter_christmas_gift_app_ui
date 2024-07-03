import 'package:christmas_gift_app_ui/utils.dart';
import 'package:flutter/material.dart';


class ThemeManager {
  ThemeData lightTheme = ThemeData(
    fontFamily: "Roboto",
    primaryColor: Utils.getColorFromHex("#fe0000"), 
    colorScheme: ColorScheme.light(
      primary: Utils.getColorFromHex("#fe0000"), 
      secondary: Utils.getColorFromHex("#132a3a"),
    ),
  );

  ThemeData darkTheme = ThemeData(
    fontFamily: "PetrovSans",
    primaryColor: Utils.getColorFromHex("#fe0000"), 
  );
}
