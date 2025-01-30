import 'package:flutter/material.dart';

TextFormField customTextField(String labelText, Color labelcolor, double radius,
    Color sidecolor, Color enablecolor, Color focuscolor, IconData? perfixicon) {
 
  return TextFormField(
    obscureText: labelText == 'Password' ? true : false,
    decoration: InputDecoration(
      prefixIcon: Icon(perfixicon),
            suffixIcon: labelText == 'Password' || labelText == 'Confirm Password' ? Icon(Icons.visibility) : null,
      labelText: labelText,
      labelStyle: TextStyle(
        color: labelcolor,
      ),
      hintText: 'Enter your $labelText',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(
          color: sidecolor,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(
          color: focuscolor,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(
          color: enablecolor,
          width: 2,
        ),
      ),
    ),
  );
}
