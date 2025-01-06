import 'package:flutter/material.dart';


abstract class StyleManager {
  // title
  static const titleStyle36 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  static const titleStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const titleSmall = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500 , letterSpacing: 0.1);
  static const titleMedium = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal , letterSpacing: 0.15);
  static const bodyMedium = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal , letterSpacing: 0.25);
  static const bodyLarge = TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal , letterSpacing: 0.5);

  // subtitle, form field, (switch, check box title)
  static const textStyleDark24 = TextStyle(
    fontSize: 24,
    color: Colors.black,
  );

   static TextStyle textStylePrimary24 = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold,
     );


   static const textStyleLight30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

   static const textStyleDark30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

   static const textStyleDark18 =
      TextStyle(fontSize: 18, color: Colors.black);

   static const textStyleLight18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

  static const textStyleDark16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500
  );
  static const textStyleDark16bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
      fontWeight: FontWeight.bold,
    color: Colors.white

  );

   static const textStyle14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white);

   static const textStyleDark14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );

   static TextStyle textStyleDarkOP12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w100,
     color: Colors.black.withOpacity(0.65),
  );

   static const textStyle20 = TextStyle(
    fontSize: 20,
    color: Colors.black,
     fontWeight: FontWeight.bold
  );

  static TextStyle textStyleDarkOP16 = TextStyle(
      fontSize: 16,
       color: Colors.black.withOpacity(0.65));
  static TextStyle textStyleGray16 = const TextStyle(
      fontSize: 16,
       color: Colors.grey);
  static TextStyle textStyleGray14 = const TextStyle(
      fontSize: 14,
       color: Colors.grey);

  static const RoundedRectangleBorder appBarShape =  RoundedRectangleBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)));
}
