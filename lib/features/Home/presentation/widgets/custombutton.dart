import 'package:flutter/material.dart';

ElevatedButton customButton(
    String text, Color color, Color textColor, VoidCallback function) {
  return ElevatedButton(
    onPressed: function,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 15,
      ),
    ),
  );
}
