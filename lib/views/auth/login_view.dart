import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/services/auth_service.dart';
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
  final AuthenticationService _authenticationService = AuthenticationService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String email;
  String password;
  String errorMessage;
  String emailValidatorError = ' ';

  FocusNode _email;
  FocusNode _password;
  FocusNode _login;

  bool _loading = false;
  bool isEmailValid = true;

  @override
  void initState() {
    super.initState();
    _email = FocusNode();
    _password = FocusNode();
    _login = FocusNode();
  }

  @override
  void dispose() {
    _emailController.clear();
    _passwordController.clear();

    _email.dispose();
    _password.dispose();
    _login.dispose();

    isEmailValid = true;
    emailValidatorError = ' ';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RelicBazaarStackedView(
                height: height * 0.60,
                width: width * 0.87,
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'pix M 8pt',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.0004,
                        ),
                        const Text(
                          'Welcome back,\nPlease login to your account',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _email,
                            keyboardType: TextInputType.emailAddress,
                            enabled: true,
                            textInputAction: TextInputAction.next,
                            decoration:
                                textFieldDecoration(hintText: 'Email Address'),
                            controller: _emailController,
                            validator: (String value) {
                              // return _authenticationService.userEmailValidation(value, errorMessage);
                              return null;
                            },
                            onFieldSubmitted: (String value) {
                              email = value;
                              _email.unfocus();
                              FocusScope.of(context).requestFocus(_password);
                            },
                          ),
                        ),
                        SizedBox(
                          height: height * 0.019,
                        ),
                        RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _password,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            decoration: textFieldDecoration(
                              hintText: 'Password',
                            ),
                            validator: (String value) => _authenticationService
                                .userPasswordValidation(value, errorMessage),
                            onFieldSubmitted: (String value) {
                              password = value;
                              _password.unfocus();
                              FocusScope.of(context).requestFocus(_login);
                            },
                          ),
                        ),
                        SizedBox(
                          height: height * 0.020,
                        ),
                        InkWell(
                          onTap: () async {
                            if (!_authenticationService
                                .checkEmailValidity(_emailController.text)) {
                              setState(() {
                                emailValidatorError =
                                    'Please enter a valid email';
                              });
                            } else {
                              setState(() {
                                emailValidatorError = ' ';
                              });
                            }
                            debugPrint('Login!');
                            errorMessage = null;
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                _loading = true;
                              });
                              errorMessage =
                                  await _authenticationService.userLogin(
                                      errorMessage, context, email, password);
                              setState(() {
                                _loading = false;
                              });
                              if (errorMessage != null) {
                                _formKey.currentState.validate();
                              }
                            }
                          },
                          focusNode: _login,
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
                        SizedBox(
                          height: height * 0.020,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () async {
                                  debugPrint('Navigate to google!');
                                  setState(() {
                                    _loading = true;
                                  });
                                  print(_loading);
                                  await AuthenticationService
                                      .signInWithGoogle();
                                  setState(() {
                                    _loading = false;
                                  });
                                  print(_loading);
                                },
                                child: SizedBox(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset(
                                      'assets/items/google.png',
                                    )),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint('Navigate to facebook!');
                                },
                                child: SizedBox(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset('assets/items/fb.png')),
                              ),
                            ]),
                        const SizedBox(height: 10.0),
                        Row(
                          //LINK TO SIGN UP PAGE
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text("Don't have an account?"),
                            const SizedBox(width: 5.0),
                            InkWell(
                              onTap: () async {
                                debugPrint('Navigate to google!');
                                setState(() {
                                  _loading = true;
                                });
                                await AuthenticationService.signInWithGoogle();
                                setState(() {
                                  _loading = false;
                                });
                              },
                              child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: Image.asset(
                                    'assets/items/google.png',
                                  )),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(RouteConstant.SIGN_UP_SCREEN);
                              },
                              child: const Text(
                                'SignUp',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  emailValidatorError,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
