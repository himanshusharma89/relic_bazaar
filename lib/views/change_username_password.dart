import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/settings.dart';
import 'package:retro_shopping/widgets/retro_button.dart';


class ChangeUsername extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChangeUsernameState();
  }
}

TextEditingController _userNameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();


String _username = "";
String _password = "";
String _confirmPassword = "";

class ChangeUsernameState extends State<ChangeUsername>{
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: RetroButton(
              upperColor: Colors.white,
              lowerColor: Colors.black,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        elevation: 0.0,
      ),
      body: Stack(
        // ignore: always_specify_types
        children: [
          Positioned(
            top: 70,
            right: 20,
            child: Center(
              child: Stack(
                // ignore: always_specify_types
                children: [
                  Transform.translate(
                    offset: const Offset(5,5),
                    child: Container(
                      width: width * 0.88,
                      height: height * 0.615,
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                  Container(
                      height: height * 0.61,
                      //height: 458,
                      width: width * 0.87,
                      decoration: const BoxDecoration(color: RelicColors.primaryColor),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            // ignore: always_specify_types
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10.0),
                                child: Row(
                                  // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_literals_to_create_immutables,
                                    const Expanded(
                                      child: Text('Change Username or Password',
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontFamily: 'pix M 8pt',
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height*0.011,
                              ),
                              Stack(
                                // ignore: always_specify_types
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
                                        child: TextFormField(
                                            controller: _userNameController,
                                            onChanged: (String value){
                                              _username = value;
                                            },
                                            decoration: const InputDecoration(
                                                labelText: 'Username',
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
                                // ignore: always_specify_types
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
                                        child: TextFormField(
                                            controller: _passwordController,
                                            onChanged: (String value){
                                              _password = value;
                                            },

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
                              Stack(
                                // ignore: always_specify_types
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
                                        child: TextFormField(
                                            controller: _confirmPasswordController,
                                            onChanged: (String value){
                                              _confirmPassword = value;
                                            },
                                            // ignore: missing_return
                                            decoration: const InputDecoration(
                                                labelText: 'Confirm Password',
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
                              Row(
                                // ignore: always_specify_types
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0, right: 20.0),
                                    child: InkWell(
                                      onTap: (){
                                        debugPrint('Save!!');
                                        // ignore: always_specify_types
                                        // ignore: always_specify_types
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (BuildContext context){
                                              return Settings();
                                            })
                                        )
                                        ;
                                      },
                                      child: RetroButton(
                                        upperColor: Colors.black,
                                        lowerColor: Colors.white,
                                        height: height * 0.065,
                                        width: width * 0.40,
                                        borderColor: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            'Save',
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
                                height: height*0.040,
                              ),

                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}