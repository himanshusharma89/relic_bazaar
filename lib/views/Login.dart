import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Transform.translate(
                  offset: Offset(5,5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    height: MediaQuery.of(context).size.height * 0.605,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.60,
                    //height: 458,
                    width: MediaQuery.of(context).size.width * 0.87,
                    decoration: BoxDecoration(color: RelicColors.primaryColor),
                    child: Center(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Row(
                              children: [
                                Text('Login',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontFamily: 'pix M 8pt',
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.011,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0, right: 20.0),
                            child: Text('Welcome back,\n please login to your account',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'pix M 8pt',
                                //fontWeight: FontWeight.bold
                              ),),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.020,
                          ),
                          Stack(
                              children:[
                                Transform.translate(
                                  offset: Offset(25,10),
                                  child: Container(
                                    color: Colors.black,
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    height: MediaQuery.of(context).size.height * 0.065,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height*0.07,
                                    child: TextField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                            labelText: 'Email Address',
                                            labelStyle: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.black
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.zero,
                                                borderSide: BorderSide(color: Colors.black)
                                            )
                                        )
                                    ),
                                  ),
                                ),
                              ]
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.030,
                          ),
                          Stack(
                              children:[
                                Transform.translate(
                                  offset: Offset(25,10),
                                  child: Container(
                                    color: Colors.black,
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    height: MediaQuery.of(context).size.height * 0.065,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height*0.07,
                                    child: TextField(
                                        controller: _passwordController,
                                        decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.black
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.zero,
                                                borderSide: BorderSide(color: Colors.black)
                                            )
                                        )
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.030,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0, right: 20.0),
                            child: InkWell(
                              child: RetroButton(
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                upperColor: Colors.black,
                                lowerColor: Colors.white,
                                height: MediaQuery.of(context).size.height * 0.065,
                                width: MediaQuery.of(context).size.width * 0.40,
                                borderColor: Colors.white,
                              ),
                              onTap: (){
                                debugPrint('Login!');
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.040,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 115),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  InkWell(
                                    child: Container(
                                        width: 45,
                                        height: 45,
                                        child: Image.asset('assets/items/google.png',)
                                    ),
                                    onTap: (){
                                      debugPrint('Navigate to google!');
                                    },
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.05,
                                  ),
                                  InkWell(
                                    child: Container(
                                        width: 45,
                                        height: 45,
                                        child: Image.asset('assets/items/fb.png')
                                    ),
                                    onTap: (){
                                      debugPrint('Navigate to facebook!');
                                    },
                                  ),
                                ]
                            ),
                          )

                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}