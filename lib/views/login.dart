import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/dashboard.dart';

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(

    body: Stack(
      children: [
      Center(
      child: Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Transform.translate(
          offset: const Offset(5,5),
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
            decoration: const BoxDecoration(color: RelicColors.primaryColor),
            child: Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      children: [
                        const Text('Login',
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
                    height: height*0.011,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:20.0, right: 20.0),
                    child: Text('Welcome back,\n please login to your account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'pix M 8pt',
                        //fontWeight: FontWeight.bold
                      ),),
                  ),
                  SizedBox(
                    height: height*0.020,
                  ),
                  Stack(
                      children:[
                        Transform.translate(
                          offset: const Offset(25,10),
                          child: Container(
                            color: Colors.black,
                            width: width * 0.77,
                            height: height * 0.065,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0, right: 20.0),
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: height*0.07,
                            child: TextField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero
                                    )
                                )
                            ),
                          ),
                        ),
                      ]
                  ),

                  SizedBox(
                    height: height*0.030,
                  ),
                  Stack(
                      children:[
                        Transform.translate(
                          offset: const Offset(25,10),
                          child: Container(
                            color: Colors.black,
                            width: width * 0.77,
                            height: height * 0.065,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0, right: 20.0),
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: height*0.07,
                            child: TextField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero
                                    )
                                )
                            ),
                          ),
                        ),
                      ]
                  ),
                  SizedBox(
                    height: height*0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 20.0),
                    child: InkWell(
                      onTap: (){
                        debugPrint('Login!');
                        // ignore: always_specify_types
                        Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context){
                              return Dashboard();
                            }));
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
                    height: height*0.040,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 115),
                    child: Row(
                        children:[
                          InkWell(
                            onTap: (){
                              debugPrint('Navigate to google!');
                            },
                            // ignore: sized_box_for_whitespace
                            child: Container(
                                width: 45,
                                height: 45,
                                child: Image.asset('assets/items/google.png',)
                            ),
                          ),
                          SizedBox(
                            width: width*0.05,
                          ),
                          InkWell(
                            onTap: (){
                              debugPrint('Navigate to facebook!');
                            },
                            // ignore: sized_box_for_whitespace
                            child: Container(
                                width: 45,
                                height: 45,
                                child: Image.asset('assets/items/fb.png')
                            ),
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