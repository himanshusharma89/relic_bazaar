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

  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;
  FocusNode _confirmPasswordFocusNode;
  FocusNode _signupFocusNode;

  bool _loading = false;

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
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();

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
                            controller: _emailController,
                            validator: (String value) => _authenticationService
                                .userEmailValidation(value, errorMessage),
                            onFieldSubmitted: (String value) {
                              email = value;
                              _emailFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode);
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
                            validator: (String value) => _authenticationService
                                .userConfirmPasswordValidation(
                                    value, password, confirmPassword),
                            onFieldSubmitted: (String value) {
                              confirmPassword = value;
                              _confirmPasswordFocusNode.unfocus();
                              FocusScope.of(context).requestFocus(
                                _confirmPasswordFocusNode,
                              );
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
                              FocusScope.of(context).requestFocus(
                                _signupFocusNode,
                              );
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
}
