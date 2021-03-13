import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:retro_shopping/helpers/constants.dart';

class Styles{
//for all textStyles in the app

//for all textstyles in cart.dart file
  static TextStyle button_Text() {
    return TextStyle(
      fontFamily: 'pix M 8pt',
      // ignore: file_names
      fontSize: ScreenUtil().setSp(15),
      fontWeight: FontWeight.bold,
      color: RelicColors.primaryBlack,
    );
  // ignore: file_names
  }

  static TextStyle headLine() {
    return TextStyle(
      fontSize: ScreenUtil().setSp(30),
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
    // ignore: file_names
  }

  static TextStyle btnText1() {
    return TextStyle(
      fontFamily: 'pix M 8pt',
      fontSize: ScreenUtil().setSp(15),
      color: Colors.white,
    );
    // ignore: file_names
  }

  //for all textstyles in cart_item.dart file

  static TextStyle productName() {
    return TextStyle(
        fontSize: ScreenUtil().setSp(21),
        fontWeight: FontWeight.bold,
        color: Colors.white);
    // ignore: file_names
  }
  static TextStyle price() {
    return TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: ScreenUtil().setSp(17),);
    // ignore: file_names
  }

  //for all textfields in payment_windows.dart file
  static TextStyle cartTotal() {//and price also
    return  TextStyle(fontSize: ScreenUtil().setSp(17),);
  }
  static TextStyle cartPrice() {//and price also
    return  TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  }


}