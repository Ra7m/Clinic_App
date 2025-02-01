import 'package:flutter/material.dart';

TextFormField customTextField(
    String labelText,
    Color labelcolor,
    double radius,
    Color sidecolor,
    Color enablecolor,
    Color focuscolor,
    IconData? perfixicon,
    TextEditingController controller,
    dynamic suffix,
    TextInputType keytype,
    bool obscureText) {
  return TextFormField(
    controller: controller,
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
        if (value.length < 6) {
          return 'Password must be at least 6 ';
        }
      }
      if (labelText == 'Confirm Password') {
        if (value != 'Password') {
          return 'Password does not match';
        }
      }
      return null;
    },
    keyboardType: keytype,
    obscureText: obscureText,
    decoration: InputDecoration(
      prefixIcon: Icon(perfixicon),
      suffixIcon: labelText == 'Password' || labelText == 'Confirm Password'
          ? suffix
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
