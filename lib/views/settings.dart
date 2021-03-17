import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/address_screen.dart';
import 'package:retro_shopping/views/manage_address.dart';
import 'package:retro_shopping/views/orders.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool Switched_On = false;

  Widget _setting_Buttons(String text, IconData ic, {var tags}) {
    return InkWell(
      onTap: () {
        if (tags != null){
          Navigator.push(context, MaterialPageRoute(builder: (context) => tags));
        }
      },
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 70,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  ic,
                  size: 30,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(text,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 20))
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    );
  }

  Widget divider() {
    return const Divider(
      height: 0.5,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text("Settings"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.92 + 10,
                    height: MediaQuery.of(context).size.height * 0.85 + 10,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    width: MediaQuery.of(context).size.width * 0.92 - 3,
                    height: MediaQuery.of(context).size.height * 0.85 + 5,
                    decoration:
                        const BoxDecoration(color: RelicColors.primaryColor),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _setting_Buttons(
                                "Your Orders", Icons.bookmark_border_sharp, tags: OrderPage()),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons(
                              "Change Username/\nPassword", Icons.person),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons("FAQs", Icons.question_answer),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons(
                              "Manage Address", Icons.location_pin, tags: AddressScreen()),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons("T&C", Icons.quick_contacts_dialer),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          Row(
                            children: <Widget>[
                              const SizedBox(
                                height: 70,
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Icon(
                                      Icons.notifications_active,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text("Notifications(on/off)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20))
                                  ],
                                ),
                              ),
                              Switch(
                                value: Switched_On,
                                onChanged: (value) {
                                  setState(() {
                                    Switched_On = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Colors.black,
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons("LogOut", Icons.logout),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                          _setting_Buttons(
                              "GitHub Repo Link", Icons.verified_user_outlined),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: divider(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
