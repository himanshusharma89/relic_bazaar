import 'package:flutter/material.dart';

InputDecoration textFieldDecoration({String hintText, Icon icon}) {
  return InputDecoration(
    prefixIcon: icon,
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    border: InputBorder.none,
  );
}
