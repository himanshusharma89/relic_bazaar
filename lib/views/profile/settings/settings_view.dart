import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/settings_item.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchedOn = false;

  Widget divider() {
    return const Divider(
      height: 0.5,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ListView view = ListView(children: <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          settingsItem(context, 'Your Orders', Icons.bookmark_border_sharp,
            routeName: RouteConstant.ORDERS_SCREEN, push: true,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(context, 'Change Username/\nPassword', Icons.person,
            routeName: RouteConstant.CHANGE_USERNAME_SCREEN, push: true,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(context, 'FAQs', Icons.question_answer,
            routeName: RouteConstant.FAQs_SCREEN, push: true,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(context, 'Manage Address', Icons.location_pin,
            routeName: RouteConstant.ADDRESS_SCREEN, push: true,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(context, 'T&C', Icons.quick_contacts_dialer,
            routeName: RouteConstant.TERMS_CONDITIONS, push: true,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          Row(children: <Widget>[
            const SizedBox(height: 70,),
            Expanded(child: Row(children: const <Widget>[
              SizedBox(width: 10,),
              Icon(Icons.notifications_active, size: 25, color: Colors.white,),
              SizedBox(width: 20,),
              Expanded(child: Text('Notifications(on/off)', style: TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 16)),)
            ],),),
            Switch(value: switchedOn, onChanged: (bool value) {
              setState(() {
                switchedOn = value;
              });
            }, activeColor: Colors.white, activeTrackColor: Colors.black,)
          ],),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(context, 'LogOut', Icons.logout,
            routeName: RouteConstant.LOGIN_SCREEN, push: false,),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
          settingsItem(
              context, 'GitHub Repo Link', Icons.verified_user_outlined),
          Padding(padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: divider(),),
        ],),
    ]);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: RelicColors.backgroundColor,
          leading: Padding(
            padding: const EdgeInsets.only(left:14.0, right: 10, top: 15, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const RelicBazaarStackedView(
                upperColor: Colors.white,
                width: 25,
                height: 25,
                borderColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          title: const Text('Settings'),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 15,top: 10),
          child: SingleChildScrollView(
              child: RelicBazaarStackedView( height: MediaQuery.of(context).size.height * 0.82 + 10,
                  width: MediaQuery.of(context).size.width * 0.92 + 10, child: view,)
          ),
        ));
  }
}
