import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class ManageAddress extends StatefulWidget {
  @override
  _ManageAddressState createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {

  int currStep = 0;

  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController line1 = new TextEditingController();
  TextEditingController line2 = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController pincode = new TextEditingController();
  TextEditingController state = new TextEditingController();
  TextEditingController loc = new TextEditingController();
  String finalAddress="Address is not Set Yet";



  Widget textBox(IconData icon, String hint, TextEditingController text, TextInputType type){
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: const Offset(5, 5),
          child: Container(
            height: height * 0.06,
            width: width * 0.9,
            color: Colors.black,
          ),
        ),
        Container(
          height: height * 0.06,
          width: width * 0.9,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(icon),
                Expanded(
                    child: TextFormField(
                      style: const TextStyle(
                        fontFamily: 'pix M 8pt',
                        fontSize: 16,
                        color: RelicColors.primaryBlack,
                      ),
                      keyboardType: type,
                      controller: text,
                      decoration: InputDecoration(
                          hintText: hint,
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          )),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    getLocation() async {
      var position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      var coordinates = Coordinates(position.latitude, position.longitude);
      var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
      var first = addresses.first;
      print("$addresses : ${first.addressLine}");
      setState(() {
        loc.text = first.addressLine;
      });
      print(loc.text);
    }

    List<Step> steps = [
      Step(
        title: Text("Info"),
        content: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.93 + 15,
                height: MediaQuery.of(context).size.height * 0.61 + 9,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.86- 3,
                height: MediaQuery.of(context).size.height * 0.61 + 5,
                decoration:
                const BoxDecoration(color: RelicColors.primaryColor),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Account Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Name:", style: TextStyle( fontSize: 15)),
                        ],
                      ),
                      textBox(Icons.person, "Enter Your Name", name, TextInputType.name),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Phone no:", style: TextStyle( fontSize: 15)),
                        ],
                      ),
                      textBox(Icons.mobile_friendly, "Enter Your Phone No", phone, TextInputType.phone),
                      SizedBox(height: 15,) ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Pick Current Location", style: TextStyle( fontSize: 15)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        child: MaterialButton(
                          onPressed: () {
                            getLocation();
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.blue[900],
                          child: Row(
                            children: [
                              Icon(Icons.my_location, color: Colors.white,),
                              const SizedBox(width: 20,),
                              const Text(
                                'Use my location',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Text("Note: Use your Current Location or type manually by clicking continue.")
                       //textBox()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        isActive: currStep == 0,
      ),
      Step(
        title: const Text("Add Address"),
        isActive: currStep == 1,
        content: Center(
            child: loc.text==""?  Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.93 + 15,
                  height: MediaQuery.of(context).size.height * 0.64 + 9,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 12),
                  width: MediaQuery.of(context).size.width * 0.86- 3,
                  height: MediaQuery.of(context).size.height * 0.64 + 5,
                  decoration:
                  const BoxDecoration(color: RelicColors.primaryColor),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Add Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Line1:", style: TextStyle( fontSize: 15)),
                          ],
                        ),
                        textBox(Icons.house, "House No, Building Name", line1, TextInputType.streetAddress),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Line2:", style: TextStyle( fontSize: 15)),
                          ],
                        ),
                        textBox(Icons.house, "Road name, Area Colony", line2, TextInputType.streetAddress),
                        SizedBox(height: 8,) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("City:", style: TextStyle( fontSize: 15)),
                          ],
                        ),
                        textBox(Icons.location_city, "City", city, TextInputType.streetAddress),
                        SizedBox(height: 8,) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("State:", style: TextStyle( fontSize: 15)),
                          ],
                        ),
                        textBox(Icons.location_pin, "State", state, TextInputType.streetAddress),
                        SizedBox(height: 8,) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Pincode:", style: TextStyle( fontSize: 15)),
                          ],
                        ),
                        textBox(Icons.location_pin, "Pincode", pincode, TextInputType.number),
                      ],
                    )
                  ),
                ),
              ],
            ) : Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.93 + 15,
                  height: MediaQuery.of(context).size.height * 0.45 + 9,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 12),
                  width: MediaQuery.of(context).size.width * 0.86- 3,
                  height: MediaQuery.of(context).size.height * 0.45 + 5,
                  decoration:
                  const BoxDecoration(color: RelicColors.primaryColor),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65 + 3,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                height: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        loc.text,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
        )
      ),
    ];

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
        title: Text("Manage Address"),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed:(){
                showDialog(
                  context: context,
                  builder: (context) =>  SimpleDialog(
                    backgroundColor: Colors.white,
                    titlePadding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    title: Text("Address", style: TextStyle(fontSize: 20)),
                    children: [
                      Text(finalAddress, style: TextStyle(fontSize: 15)),
                    ],
                  ),
                );

              }
              )
        ],
      ),
      body: Stepper(
        steps: steps,
        physics: BouncingScrollPhysics(),
        type: StepperType.horizontal,
        currentStep: currStep,
        controlsBuilder: (BuildContext context,
            {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: onStepContinue,
                child: Text('CONTINUE', style: TextStyle(color: Colors.white),),
              ),
              SizedBox(width: 10,),
              FlatButton(
                onPressed: onStepCancel,
                child: Text('CANCEL', style: TextStyle(color: Colors.white),),
              ),
            ],
          );
        },
        onStepContinue: () {
          setState(() {
            if (currStep < steps.length - 1) {
              currStep = currStep + 1;
            } else {
              showDialog(context: context,
                builder: (context)=>AlertDialog(
                  backgroundColor: Colors.white,
                  title: Text("Confirmation", style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold)),
                  content: Text(
                    "Are you sure you Save the Address?",
                    style: TextStyle(color:Colors.black),
                  ),
                  actions: [
                    FlatButton(
                      child: Text(
                        "Yes",
                        style: TextStyle(color:Colors.blue,),
                      ),
                      onPressed: () async{
                        if(loc.text!=""){
                          setState(() {
                            finalAddress=name.text+"\n"+phone.text+"\n"+loc.text;
                          });
                        } else {
                          setState(() {
                            finalAddress=name.text+"\n"+phone.text+"\n"+line1.text+",\n"+line2.text+",\n"+city.text+", "+state.text+"-"+pincode.text+",\n"+"India";
                          });
                        }
                        Navigator.of(context).pop();

                      },
                    ),
                    FlatButton(
                      child: Text("No", style: TextStyle(color:Colors.blue,)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (currStep > 0) {
              currStep = currStep - 1;
            } else {
              currStep = 0;
            }
          });
        },
        onStepTapped: (step) {
          setState(() {
            currStep = step;
          });
        },
      ),
    );
  }
}
