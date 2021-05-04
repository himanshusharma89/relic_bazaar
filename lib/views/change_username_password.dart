import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class ChangeUsername extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChangeUsernameState();
  }
}

class ChangeUsernameState extends State<ChangeUsername> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  FocusNode _email;
  FocusNode _password;
  FocusNode _confirm;
  FocusNode _save;

  @override
  void initState() {
    super.initState();
    _email = FocusNode();
    _password = FocusNode();
    _confirm = FocusNode();
    _save = FocusNode();
  }

  @override
  void dispose() {
    _userNameController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();

    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    _save.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: RelicBazaarStackedView(
              height: height * 0.55,
              width: width * 0.87,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Change Username or Password',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'pix M 8pt',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.011,
                    ),
                    RelicBazaarStackedView(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: TextFormField(
                        autofocus: true,
                        focusNode: _email,
                        keyboardType: TextInputType.emailAddress,
                        enabled: true,
                        textInputAction: TextInputAction.next,
                        decoration: textFieldDecoration(hintText: 'Username'),
                        controller: _userNameController,
                        onFieldSubmitted: (String value) {
                          _email.unfocus();
                          FocusScope.of(context).requestFocus(_password);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    RelicBazaarStackedView(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: TextFormField(
                        focusNode: _password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        enabled: true,
                        textInputAction: TextInputAction.next,
                        decoration: textFieldDecoration(hintText: 'Password'),
                        onFieldSubmitted: (String value) {
                          _password.unfocus();
                          FocusScope.of(context).requestFocus(_confirm);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    RelicBazaarStackedView(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: TextFormField(
                        focusNode: _confirm,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        enabled: true,
                        textInputAction: TextInputAction.done,
                        decoration:
                            textFieldDecoration(hintText: 'Confirm Password'),
                        onFieldSubmitted: (String value) {
                          _confirm.unfocus();
                          FocusScope.of(context).requestFocus(_save);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.030,
                    ),
                    InkWell(
                      onTap: () {},
                      focusNode: _save,
                      child: RelicBazaarStackedView(
                        upperColor: Colors.black,
                        lowerColor: Colors.white,
                        height: height * 0.065,
                        width: width * 0.40,
                        borderColor: Colors.white,
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.040,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
