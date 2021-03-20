import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/dashboard.dart';
import 'package:retro_shopping/services/google_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String email;
  String password;

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
                    height: height * 0.605,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Container(
                    height: height * 0.60,
                    //height: 458,
                    width: width * 0.87,
                    decoration:
                        const BoxDecoration(color: RelicColors.primaryColor),
                    child: Center(
                      child: ListView(
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
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              'Welcome back,\n please login to your account',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'pix M 8pt',
                                //fontWeight: FontWeight.bold
                              ),
                            ),
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
                                      onChanged: (String value) {
                                        email = value;
                                      },
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        labelText: 'Email Address',
                                        labelStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero),
                                      ),
                                    ),
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
                                      onChanged: (String value) {
                                        password = value;
                                      },
                                      controller: _passwordController,
                                      decoration: const InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.black),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: height * 0.030,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: InkWell(
                              onTap: () async {
                                try {
                                  final UserCredential existingUser =
                                      await _auth.signInWithEmailAndPassword(
                                          email: email, password: password);
                                  if (existingUser != null) {
                                    Navigator.pushReplacementNamed(
                                        context, '/dashboard');
                                  }
                                } catch (e) {
                                  print('existing user exception $e');
                                }
                                debugPrint('Login!');
                                // ignore: always_specify_types
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
                                      signInWithGoogle().then(
                                        (result) {
                                          if (result != null) {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return Dashboard();
                                                },
                                              ),
                                            );
                                          }
                                          ;
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
                          )
                        ],
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
