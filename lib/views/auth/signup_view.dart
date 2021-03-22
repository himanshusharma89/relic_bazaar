import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/auth/login_view.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/dashboard.dart';
<<<<<<< HEAD:lib/views/auth/signup_view.dart
import 'package:retro_shopping/services/auth_service.dart';
=======
import 'package:retro_shopping/services/google_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:retro_shopping/widgets/custom_alertdialog.dart';
>>>>>>> 1d0cb92 (Added Email Auth):lib/views/login.dart

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

<<<<<<< HEAD:lib/views/auth/signup_view.dart
class SignUpScreenState extends State<SignUpScreen> {
=======
class LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String email;
  String password;
  String errorMessage;

  AlertBox alertBox = AlertBox();

>>>>>>> 1d0cb92 (Added Email Auth):lib/views/login.dart
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        // ignore: always_specify_types
        children: [
          Center(
            child: Stack(
              // ignore: always_specify_types
              children: [
                Transform.translate(
                  offset: const Offset(5, 5),
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.705,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Container(
                    height: height * 0.70,
                    //height: 458,
                    width: width * 0.87,
                    decoration:
                        const BoxDecoration(color: RelicColors.primaryColor),
                    child: Center(
                      child: SingleChildScrollView(
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
                                    'SignUp',
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
                                    'Get Started,\nCreate a new account',
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
                                      child: TextField(
                                          onChanged: (value) {
                                            email = value;
                                          },
                                          controller: _emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                              labelText: 'Email Address',
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
                                      child: TextField(
                                          onChanged: (value) {
                                            password = value;
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
                                      child: TextField(
                                          controller: _passwordController,
                                          decoration: const InputDecoration(
                                              labelText: 'Confirm Password',
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
<<<<<<< HEAD:lib/views/auth/signup_view.dart
                                    onTap: () {
                                      debugPrint('SignUp!!');
                                      // ignore: always_specify_types
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return LoginScreen();
                                      }));
=======
                                    onTap: () async {
                                      try {
                                        final existingUser = await _auth
                                            .signInWithEmailAndPassword(
                                                email: email,
                                                password: password);
                                        if (existingUser != null) {
                                          Navigator.pushReplacementNamed(
                                              context, '/dashboard');
                                          _emailController.clear();
                                          _passwordController.clear();
                                        }
                                      } catch (e) {
                                        if (e
                                            .toString()
                                            .contains('invalid-email')) {
                                          errorMessage = 'Invalid Email';
                                        } else if (e
                                            .toString()
                                            .contains('user-not-found')) {
                                          errorMessage = 'User Not Found';
                                        } else if (e
                                            .toString()
                                            .contains('wrong-password')) {
                                          errorMessage = 'Incorrect Password';
                                        } else {
                                          errorMessage = 'Invalid Request';
                                        }
                                        await alertBox.getAlertBox(
                                            context, errorMessage);
                                      }
                                      debugPrint('Login!');
                                      // ignore: always_specify_types
>>>>>>> 1d0cb92 (Added Email Auth):lib/views/login.dart
                                    },
                                    child: RetroButton(
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
                                                  .pushReplacement(
                                                // ignore: always_specify_types
                                                MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dashboard();
                                                  },
                                                ),
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
                                          child: Image.asset(
                                              'assets/items/fb.png')),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
