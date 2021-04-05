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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(
        height: 0.5,
        color: Colors.white,
      ),
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
              child: const RelicBazaarStackedView(
                upperColor: Colors.white,
                width: 35,
                height: 35,
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
        body: Center(
          child: RelicBazaarStackedView(
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Column(
              children: <Widget>[
                settingsItem(
                  context,
                  'Your Orders',
                  Icons.bookmark_border_sharp,
                  routeName: RouteConstant.ORDERS_SCREEN,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'Change Username/\nPassword',
                  Icons.person,
                  routeName: RouteConstant.CHANGE_USERNAME_SCREEN,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'FAQs',
                  Icons.question_answer,
                  routeName: RouteConstant.FAQs_SCREEN,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'Manage Address',
                  Icons.location_pin,
                  routeName: RouteConstant.ADDRESS_SCREEN,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'T&C',
                  Icons.quick_contacts_dialer,
                  routeName: RouteConstant.TERMS_CONDITIONS,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'Notifications',
                  Icons.notifications,
                  routeName: RouteConstant.TERMS_CONDITIONS,
                  push: true,
                ),
                divider(),
                settingsItem(
                  context,
                  'LogOut',
                  Icons.logout,
                  routeName: RouteConstant.LOGIN_SCREEN,
                  push: false,
                ),
                divider(),
                settingsItem(
                    context, 'GitHub Repo Link', Icons.verified_user_outlined,
                    routeName: RouteConstant.GITHUB_REPO_LINK, push: true),
              ],
            ),
          ),
        ));
  }
}
