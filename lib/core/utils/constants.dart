import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'colors_manager.dart';


const Divider customDivider= Divider(height: 1 , color: ColorsManager.borderColor,thickness: 1.5,);
const double defaultPadding = 16.0;
const double defaultBorderRadious = 12.0;

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(6, errorText: 'password must be at least 6 digits long'),
]);

final nameValidator = MultiValidator([
  MaxLengthValidator(255,  errorText: "Name cannot exceed 255 characters"),
  RequiredValidator(errorText: 'Name is required'),
  //EmailValidator(errorText: "Enter a valid Name"),
]);

void navigateTo(context, widget) =>Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

const pasNotMatchErrorText = "passwords do not match";
