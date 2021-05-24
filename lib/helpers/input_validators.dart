import 'package:flutter/material.dart';
import 'package:relic_bazaar/widgets/show_error_dialog.dart';

class InputValidators {
  bool emailValidator(
      {@required String email, @required BuildContext context}) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp _regExp = RegExp(pattern);

    if (email.isEmpty || email == null) {
      showErrorDialog(
        context: context,
        errorMessage: 'Please fill the Email',
      );
      return false;
    } else if (!_regExp.hasMatch(email)) {
      showErrorDialog(
        errorMessage: 'Please enter a valid email.',
        context: context,
      );
      return false;
    }
    return true;
  }

  bool passwordValidator(
      {@required String password, @required BuildContext context}) {
    if (password.isEmpty || password == null) {
      showErrorDialog(
        context: context,
        errorMessage: 'Please fill the Password',
      );
      return false;
    } else if (password.length < 6) {
      showErrorDialog(
        errorMessage: 'Minimum length of password should be 6 characters.',
        context: context,
      );
      return false;
    }
    return true;
  }

  bool confirmPasswordValidator({
    @required String password,
    @required String confirmPassword,
    @required BuildContext context,
  }) {
    if (confirmPassword.isEmpty || confirmPassword == null) {
      showErrorDialog(
        context: context,
        errorMessage: 'Please fill the confirm password',
      );
      return false;
    } else if (confirmPassword.length < 6) {
      showErrorDialog(
        errorMessage: 'Minimum length of password should be 6 characters.',
        context: context,
      );
      return false;
    } else if (password != confirmPassword) {
      showErrorDialog(
        errorMessage: "Password doesn't match, Please try again.",
        context: context,
      );
      return false;
    }
    return true;
  }

  bool nameValidator(String name, BuildContext context) {
    if (name.isEmpty || name == null) {
      showErrorDialog(errorMessage: 'Please fill a name', context: context);
      return false;
    } else {
      return true;
    }
  }

  bool phoneNumberValidator(String phoneNumber, BuildContext context) {
    if (phoneNumber.isEmpty || phoneNumber == null) {
      showErrorDialog(
          errorMessage: 'Please fill a Phone Number', context: context);
      return false;
    } else if (phoneNumber.length != 10) {
      showErrorDialog(
        errorMessage: 'Length of phone number must be equal to 10',
        context: context,
      );
      return false;
    } else {
      return true;
    }
  }
}
