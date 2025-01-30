import 'package:flutter/material.dart';

TextFormField customTextField(
    String labelText,
    Color labelcolor,
    double radius,
    Color sidecolor,
    Color enablecolor,
    Color focuscolor,
    IconData? perfixicon) {
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUnfocus,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter your $labelText';
      }
      if (labelText == 'Email') {
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
      }
      if (labelText == 'Password' || labelText == 'Confirm Password') {
        if (value.length < 6 && value.startsWith(RegExp(r'[A-Z]')) ) {
          return 'Password must be at least 6 characters and start with a capital letter';
        }
      }
      if (labelText == 'Confirm Password') {
        if (value != 'Password') {
          return 'Password does not match';
        }
      }
      return null;
    },
    obscureText: labelText == 'Password' ? true : false,
    decoration: InputDecoration(
      prefixIcon: Icon(perfixicon),
      suffixIcon: labelText == 'Password' || labelText == 'Confirm Password'
          ? Icon(Icons.visibility)
          : null,
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
