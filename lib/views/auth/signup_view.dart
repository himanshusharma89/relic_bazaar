import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/helpers/input_validators.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/services/auth_service.dart';
import 'package:relic_bazaar/widgets/show_error_dialog.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool showPassword = true, showConfirmPassword = true, _loading = false;
  String _email, _password, _confirmPassword;
  FocusNode _emailFocusNode,
      _passwordFocusNode,
      _confirmPasswordFocusNode,
      _signupFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
    _signupFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    _signupFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return ModalProgressHUD(
      inAsyncCall: _loading,
      color: Colors.black54,
      opacity: 0.7,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: RelicBazaarStackedView(
              height: height * 0.65,
              width: width * 0.87,
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: height / 99),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.002,
                      ),
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'Get Started,\nCreate a new account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.010,
                      ),
                      Flexible(
                        flex: 3,
                        child: RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            enabled: true,
                            textInputAction: TextInputAction.next,
                            decoration:
                                textFieldDecoration(hintText: 'Email Address'),
                            onFieldSubmitted: (_) {
                              _emailFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode);
                            },
                            onSaved: (String value) {
                              _email = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.019,
                      ),
                      Flexible(
                        flex: 3,
                        child: RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _passwordFocusNode,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: showPassword,
                            enabled: true,
                            textInputAction: TextInputAction.next,
                            decoration: textFieldDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: showPassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                }, //for show and hide password
                              ),
                            ),
                            onFieldSubmitted: (_) {
                              _passwordFocusNode.unfocus();
                              FocusScope.of(context).requestFocus(
                                _confirmPasswordFocusNode,
                              );
                            },
                            onSaved: (String value) {
                              _password = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.019,
                      ),
                      Flexible(
                        flex: 3,
                        child: RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _confirmPasswordFocusNode,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: showConfirmPassword,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            decoration: textFieldDecoration(
                              hintText: 'Confirm Password',
                              suffixIcon: IconButton(
                                icon: showConfirmPassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    showConfirmPassword = !showConfirmPassword;
                                  });
                                }, //for show and hide password
                              ),
                            ),
                            onFieldSubmitted: (_) {
                              _confirmPasswordFocusNode.unfocus();
                              FocusScope.of(context).requestFocus(
                                _signupFocusNode,
                              );
                            },
                            onSaved: (String value) {
                              _confirmPassword = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Flexible(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            _formKey.currentState.save();
                            _inputValidator(
                              confirmPassword: _confirmPassword,
                              email: _email,
                              password: _password,
                            );
                          },
                          focusNode: _signupFocusNode,
                          child: RelicBazaarStackedView(
                            upperColor: Colors.black,
                            lowerColor: Colors.white,
                            height: height * 0.065,
                            width: width * 0.40,
                            borderColor: Colors.white,
                            child: const Center(
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Flexible(
                        flex: 2,
                        child: Center(
                          child: InkWell(
                            onTap: () async {
                              debugPrint('Navigate to google!');
                              setState(() {
                                _loading = true;
                              });
                              final String errorMessage =
                                  await AuthenticationService
                                      .signInWithGoogle();
                              if (errorMessage != null &&
                                  !errorMessage
                                      .contains('Sign In Cancelled By User')) {
                                showErrorDialog(
                                  errorMessage: errorMessage,
                                  context: context,
                                );
                                setState(() {
                                  _loading = false;
                                });
                              } else {
                                setState(() {
                                  _loading = false;
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            child: SizedBox(
                              width: 45,
                              height: 45,
                              child: Image.asset(
                                'assets/items/google.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _inputValidator({
    @required String email,
    @required String password,
    @required String confirmPassword,
  }) async {
    setState(() {
      _loading = true;
    });
    final InputValidators _inputValidators = InputValidators();
    final AuthenticationService _authenticationService =
        AuthenticationService();
    if (_inputValidators.emailValidator(
          email: email,
          context: context,
        ) &&
        _inputValidators.passwordValidator(
          password: password,
          context: context,
        ) &&
        _inputValidators.confirmPasswordValidator(
          password: password,
          confirmPassword: confirmPassword,
          context: context,
        )) {
      final String _errorMessage = await _authenticationService.userSignUp(
        email: email,
        password: password,
      );
      setState(() {
        _loading = false;
      });
      if (_errorMessage != null) {
        showErrorDialog(
          errorMessage: _errorMessage,
          context: context,
        );
      } else {
        Navigator.of(context).pop();
      }
    } else {
      setState(() {
        _loading = false;
      });
    }
  }
}
