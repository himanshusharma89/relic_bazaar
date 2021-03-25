import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/services/auth_service.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/stacked_container.dart';

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
      body: Stack(
        // ignore: always_specify_types
        children: [
          Center(
            child: StackedContainer(
                height: height * 0.60,
                width: width * 0.87,
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        // ignore: always_specify_types
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_literals_to_create_immutables,
                                const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontFamily: 'pix M 8pt',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.011,
                          ),
                          Row(
                            // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
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
                            ],
                          ),
                          SizedBox(
                            height: height * 0.020,
                          ),
                          Stack(
                            // ignore: always_specify_types
                            children: [
                              Transform.translate(
                                offset: const Offset(25, 10),
                                child: Container(
                                  color: Colors.black,
                                  width: width * 0.77,
                                  height: height * 0.065,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                // ignore: sized_box_for_whitespace
                                child: Container(
                                  height: height * 0.07,
                                  child: TextFormField(
                                    onChanged: (String value) {
                                      email = value;
                                    },
                                    validator: (String value) =>
                                        _authenticationService
                                            .userEmailValidation(
                                                value, errorMessage),
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      labelText: 'Email Address',
                                      labelStyle: TextStyle(
                                          fontSize: 20.0, color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.030,
                          ),
                          Stack(
                              // ignore: always_specify_types
                              children: [
                                Transform.translate(
                                  offset: const Offset(25, 10),
                                  child: Container(
                                    color: Colors.black,
                                    width: width * 0.77,
                                    height: height * 0.065,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0),
                                  // ignore: sized_box_for_whitespace
                                  child: Container(
                                    height: height * 0.07,
                                    child: TextFormField(
                                        onChanged: (String value) {
                                          password = value;
                                        },
                                        validator: (String value) {
                                          return _authenticationService
                                              .userPasswordValidation(
                                                  value, errorMessage);
                                        },
                                        controller: _passwordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                            labelText: 'Password',
                                            labelStyle: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.black),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.zero))),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: height * 0.030,
                          ),
                          Row(
                            // ignore: always_specify_types
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: InkWell(
                                  onTap: () async {
                                    debugPrint('Login!');
                                    errorMessage = null;
                                    if (_formKey.currentState.validate()) {
                                      errorMessage =
                                          await _authenticationService
                                              .userLogin(errorMessage, context,
                                                  email, password);
                                      if (errorMessage != null) {
                                        _formKey.currentState.validate();
                                      }
                                    }
                                  },
                                  child: RetroButton(
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
                            ],
                          ),
                          SizedBox(
                            height: height * 0.040,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 115),
                            child: Row(
                                // ignore: always_specify_types
                                children: [
                                  InkWell(
                                    onTap: () {
                                      debugPrint('Navigate to google!');
                                      AuthenticationService.signInWithGoogle()
                                          .then(
                                        (String result) {
                                          if (result != null) {
                                            Navigator.of(context)
                                                .pushReplacementNamed(
                                              RouteConstant.DASHBOARD_SCREEN,
                                            );
                                          }
                                        },
                                      );
                                    },
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
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
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                        width: 45,
                                        height: 45,
                                        child:
                                            Image.asset('assets/items/fb.png')),
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
                                  // ignore: always_specify_types
                                  Navigator.of(context)
                                      .pushNamed(RouteConstant.SIGN_UP_SCREEN);
                                },
                                child: const Text(
                                  'SignUp',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
