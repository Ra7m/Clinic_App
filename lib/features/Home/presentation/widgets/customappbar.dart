
import 'package:flutter/material.dart';

AppBar customAppBar(String title, Color bcolor, bool ctitle,

    ) {
  return AppBar(
    
    elevation: 10,
    centerTitle: ctitle,
    title: Text(title),
    backgroundColor: bcolor,
    
    
    
  );
}
