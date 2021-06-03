import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/input_validators.dart';
import 'package:relic_bazaar/services/auth_service.dart';
import 'package:relic_bazaar/widgets/show_error_dialog.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email, _password;
  FocusNode _emailFocusNode, _passwordFocusNode, _loginFocusNode;
  bool _loading = false, _showPassword = true;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _loginFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _loginFocusNode.dispose();
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
              height: height * 0.60,
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
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.0004,
                      ),
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'Welcome back,\nPlease login to your account',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
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
                            decoration: textFieldDecoration(
                              hintText: 'Email Address',
                            ),
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
                            obscureText: _showPassword,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            decoration: textFieldDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: _showPassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      _showPassword = !_showPassword;
                                    },
                                  );
                                }, //for show and hide password
                              ),
                            ),
                            onFieldSubmitted: (_) {
                              _passwordFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_loginFocusNode);
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
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            _formKey.currentState.save();
                            _inputValidator(
                              email: _email,
                              password: _password,
                            );
                          },
                          focusNode: _loginFocusNode,
                          child: RelicBazaarStackedView(
                            upperColor: Colors.black,
                            lowerColor: Colors.white,
                            height: height * 0.065,
                            width: width * 0.40,
                            borderColor: Colors.white,
                            child: const Center(
                              child: Text(
                                'Login',
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
                      Center(
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () async {
                                debugPrint('Navigate to google!');
                                setState(() {
                                  _loading = true;
                                });
                                final String errorMessage =
                                    await AuthenticationService
                                        .signInWithGoogle();
                                if (errorMessage != null &&
                                    !errorMessage.contains(
                                        'Sign In Cancelled By User')) {
                                  showErrorDialog(
                                    errorMessage: errorMessage,
                                    context: context,
                                  );
                                  setState(() {
                                    _loading = false;
                                  });
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
                            TextButton(
                              onPressed: () => Navigator.of(context).pushNamed(
                                RouteConstant.SIGN_UP_SCREEN,
                              ),
                              child: const Text(
                                'SignUp',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
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
  }) async {
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
        )) {
      String _errorMessage;
      setState(() {
        _loading = true;
      });
      _errorMessage = await _authenticationService.userLogin(
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
      }
    }
  }
}
