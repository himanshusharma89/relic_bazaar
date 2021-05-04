import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/address_model.dart';
import 'package:relic_bazaar/widgets/address_text_field.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class ManageAddress extends StatefulWidget {
  @override
  _ManageAddressState createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  int currStep = 0;

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController line1 = TextEditingController();
  TextEditingController line2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController loc = TextEditingController();
  String finalAddress = 'Address is not Set Yet';

  Future<void> getLocation() async {
    final Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final Coordinates coordinates =
        Coordinates(position.latitude, position.longitude);
    final List<Address> addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    final Address first = addresses.first;
    debugPrint('$addresses : ${first.addressLine}');
    setState(() {
      loc.text = first.addressLine;
    });
    debugPrint(loc.text);
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    final List<Step> steps = <Step>[
      Step(
        title: const Text('Info'),
        content: Center(
          child: RelicBazaarStackedView(
            width: width * 0.86,
            height: height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Account Information',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Name:', style: TextStyle(fontSize: 15)),
                  addressTextField(context,
                      icon: Icons.person,
                      hint: 'Enter Your Name',
                      text: name,
                      type: TextInputType.name),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Phone no:', style: TextStyle(fontSize: 15)),
                  addressTextField(context,
                      icon: Icons.mobile_friendly,
                      hint: 'Enter Your Phone No',
                      text: phone,
                      type: TextInputType.phone),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Pick Current Location',
                      style: TextStyle(fontSize: 15)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: MaterialButton(
                      onPressed: () {
                        getLocation();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.blue[900],
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.my_location,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Use my location',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                      'Note: Use your Current Location or type manually by clicking continue.')
                  //addressTextField(context, icon: )
                ],
              ),
            ),
          ),
        ),
        isActive: currStep == 0,
      ),
      Step(
          title: const Text('Add Address'),
          isActive: currStep == 1,
          content: Center(
            child: loc.text == ''
                ? RelicBazaarStackedView(
                    width: width * 0.86,
                    height: height * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Add Address',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Line1:', style: TextStyle(fontSize: 15)),
                          addressTextField(context,
                              icon: Icons.house,
                              hint: 'House No, Building Name',
                              text: line1,
                              type: TextInputType.streetAddress),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Line2:', style: TextStyle(fontSize: 15)),
                          addressTextField(context,
                              icon: Icons.house,
                              hint: 'Road name, Area Colony',
                              text: line2,
                              type: TextInputType.streetAddress),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('City:', style: TextStyle(fontSize: 15)),
                          addressTextField(context,
                              icon: Icons.location_city,
                              hint: 'City',
                              text: city,
                              type: TextInputType.streetAddress),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('State:', style: TextStyle(fontSize: 15)),
                          addressTextField(context,
                              icon: Icons.location_pin,
                              hint: 'State',
                              text: state,
                              type: TextInputType.streetAddress),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('Pincode:',
                              style: TextStyle(fontSize: 15)),
                          addressTextField(context,
                              icon: Icons.location_pin,
                              hint: 'Pincode',
                              text: pincode,
                              type: TextInputType.number),
                        ],
                      ),
                    ),
                  )
                : RelicBazaarStackedView(
                    width: width * 0.86,
                    height: height * 0.45,
                    child: Center(
                      child: RelicBazaarStackedView(
                        width: width * 0.65,
                        height: 180,
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
                    ),
                  ),
          )),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RelicColors.backgroundColor,
        leading: appBarBackButton(context),
        title: const Text('Manage Address'),
        elevation: 0.0,
      ),
      body:  Stepper(
          steps: steps,
          physics: const BouncingScrollPhysics(),
          type: StepperType.horizontal,
          currentStep: currStep,
          controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
            return Row(
              children: <Widget>[
                TextButton(
                  onPressed: onStepContinue,
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: onStepCancel,
                  child: const Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
          onStepContinue: () {
            setState(() {
              if (currStep < steps.length - 1) {
                currStep = currStep + 1;
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Colors.white,
                    title: const Text('Confirmation',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    content: const Text(
                      'Are you sure you Save the Address?',
                      style: TextStyle(color: Colors.black),
                    ),
                    actions: <TextButton>[
                      TextButton(
                        onPressed: () async {
                          if (loc.text != '') {
                            setState(() {
                              finalAddress =
                                  '${name.text}\n${phone.text}\n${loc.text}';
                            });
                          } else {
                            setState(() {
                              finalAddress =
                                  '${name.text}\n${phone.text}\n${line1.text},\n${line2.text},\n${city.text}, ${state.text}-${pincode.text},\nIndia';
                            });
                          }
                          address = finalAddress;
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('No',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
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
          onStepTapped: (int step) {
            setState(() {
              currStep = step;
            });
          },
        ),
    );
  }
}
