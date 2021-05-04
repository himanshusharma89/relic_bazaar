import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/services/auth_service.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthenticationService _authenticationService = AuthenticationService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool showPassword = true;
  bool showConfirmPassword = true;

  String email;
  String password;
  String errorMessage;
  String confirmPassword;

  FocusNode _email;
  FocusNode _password;
  FocusNode _confirm;
  FocusNode _signup;

  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _email = FocusNode();
    _password = FocusNode();
    _confirm = FocusNode();
    _signup = FocusNode();
  }

  @override
  void dispose() {
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();

    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    _signup.dispose();
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'SignUp',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontFamily: 'pix M 8pt',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.002,
                        ),
                        const Text(
                          'Get Started,\nCreate a new account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'pix M 8pt',
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      SizedBox(
                        height: height * 0.010,
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
                              textFieldDecoration(hintText: 'Email Address',),
                          controller: _emailController,
                          validator: (String value) => _authenticationService
                              .userEmailValidation(value, errorMessage),
                          onFieldSubmitted: (String value) {
                            email = value;
                            _email.unfocus();
                            FocusScope.of(context).requestFocus(_password);
                          },
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
                            validator: (String value) => _authenticationService
                                .userEmailValidation(value, errorMessage),
                            onFieldSubmitted: (String value) {
                              email = value;
                              _email.unfocus();
                              FocusScope.of(context).requestFocus(_password);
                            },
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
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
                              decoration: textFieldDecoration(
                                hintText: 'Password',
                              ),
                              validator: (String value) =>
                                  _authenticationService.userPasswordValidation(
                                      value, errorMessage),
                              onFieldSubmitted: (String value) {
                                password = value;
                                _password.unfocus();
                                FocusScope.of(context).requestFocus(_confirm);
                              },
                            )),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        RelicBazaarStackedView(
                          height: height * 0.07,
                          width: width * 0.7,
                          child: TextFormField(
                            focusNode: _confirm,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: showPassword,
                            enabled: true,
                            textInputAction: TextInputAction.done,
                            decoration: textFieldDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: showPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {showPassword = !showPassword;});
                                },//for show and hide password
                              ),
                            ),
                            validator: (String value) => _authenticationService
                                .userConfirmPasswordValidation(
                                    value, password, confirmPassword),
                            onFieldSubmitted: (String value) {
                              confirmPassword = value;
                              _confirm.unfocus();
                              FocusScope.of(context).requestFocus(_signup);
                            },
                          )),
                      SizedBox(
                        height: height * 0.012,
                      ),
                      RelicBazaarStackedView(
                        height: height * 0.07,
                        width: width * 0.7,
                        child: TextFormField(
                          focusNode: _confirm,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: showConfirmPassword,
                          enabled: true,
                          textInputAction: TextInputAction.done,
                          decoration: textFieldDecoration(
                            hintText: 'Confirm Password',
                            suffixIcon: IconButton(
                              icon: showConfirmPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                              onPressed: () {
                                setState(() {showConfirmPassword = !showConfirmPassword;});
                              },//for show and hide password
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        InkWell(
                          onTap: () async {
                            debugPrint('SignUp!!');
                            errorMessage = null;
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                _loading = true;
                              });
                              errorMessage =
                                  await _authenticationService.userSignUp(
                                      errorMessage, context, email, password);
                              setState(() {
                                _loading = false;
                              });
                              if (errorMessage != null) {
                                _formKey.currentState.validate();
                              }
                            }
                          },
                          focusNode: _signup,
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
                        SizedBox(
                          height: height * 0.015,
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
                                  await AuthenticationService
                                      .signInWithGoogle();
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
                                  debugPrint('Navigate to facebook!');
                                },
                                child: SizedBox(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset('assets/items/fb.png')),
                              ),
                            ]),
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
