import 'package:flutter/material.dart';

class ColorsManager
{
  static const String primaryHex = "#162230";
  static const String secondaryHex = "#40b684";
  static const Color primaryColor = Color(0xFF162230);
  static const Color secondaryColor = Color(0xFF40b684);
  static const Color lightSecondaryColor = Color(0xFFF5FCF9);



  static const MaterialColor primaryMaterialColor = MaterialColor(
    0xFF162230,<int, Color>{
      50: Color(0xFFE6E8EB),
      100: Color(0xFFC0C5CD),
      200: Color(0xFF96A0AB),
      300: Color(0xFF6B7A89),
      400: Color(0xFF4B5D6F),
      500: Color(0xFF2B4060),
      600: Color(0xFF253A58),
      700: Color(0xFF1E324E),
      800: Color(0xFF182A45),
      900: Color(0xFF0E1C34),
    },
  );

  static const Color borderColor = whileColor80;
  static const Color whiteColor = Colors.white;
  static const Color whileColor80 = Color(0xFFCCCCCC);

  static const Color greyColor = Color(0xFFB8B5C3);
  static const Color lightGreyColor = Color(0xFFF8F8F9);
  static const Color darkGreyColor = Color(0xFF1C1C25);


  static const Color purpleColor = Color(0xFF7B61FF);
  static const Color successColor = Color(0xFF2ED573);
  static const Color warningColor = Color(0xFFFFBE21);
  static const Color errorColor = Color(0xFFEA5B5B);
}