import 'package:flutter/material.dart';

InputDecoration textFieldDecoration({String? hintText, Icon? icon, IconButton? suffixIcon }) {
  return InputDecoration(
    prefixIcon: icon,
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    border: InputBorder.none,
    suffixIcon: suffixIcon
  );
}
