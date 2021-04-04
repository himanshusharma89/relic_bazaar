import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/services/auth_service.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/text_field_decoration.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthenticationService _authenticationService = AuthenticationService();

  String email;
  String password;
  String errorMessage;

  @override
  void dispose() {
    _emailController.clear();
    _passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: RelicBazaarStackedView(
            height: height * 0.60,
            width: width * 0.87,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'pix M 8pt',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.011,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                      'Welcome back,\nPlease login to your account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'pix M 8pt',
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                    child: RelicBazaarStackedView(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: TextFormField(
                        onChanged: (String value) {
                          email = value;
                        },
                        validator: (String value) => _authenticationService
                            .userEmailValidation(value, errorMessage),
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: textFieldDecoration(
                          hintText: 'Email Address',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                    child: RelicBazaarStackedView(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: TextFormField(
                        onChanged: (String value) {
                          password = value;
                        },
                        validator: (String value) {
                          return _authenticationService.userPasswordValidation(
                              value, errorMessage);
                        },
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: textFieldDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 50.0),
                    child: InkWell(
                      onTap: () async {
                        debugPrint('Login!');
                        errorMessage = null;
                        if (_formKey.currentState.validate()) {
                          errorMessage = await _authenticationService.userLogin(
                              errorMessage, context, email, password);
                          if (errorMessage != null) {
                            _formKey.currentState.validate();
                          }
                        }
                      },
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
                    height: height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(children: <Widget>[
                      InkWell(
                        onTap: () {
                          debugPrint('Navigate to google!');
                          AuthenticationService.signInWithGoogle().then(
                            (String result) {
                              if (result != null) {
                                Navigator.of(context).pushReplacementNamed(
                                  RouteConstant.DASHBOARD_SCREEN,
                                );
                              }
                            },
                          );
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
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    //LINK TO SIGN UP PAGE
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      const SizedBox(width: 5.0),
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
            )),
      ),
    );
  }
}
