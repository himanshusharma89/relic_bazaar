import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/services/auth_service.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/settings_item.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchedOn = false;
  bool _isLoading = false;
  final AuthenticationService _authService = AuthenticationService();
  Widget divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(
        height: 0.5,
        color: Colors.white,
      ),
    );
  }

  void _goToScreen(String routeName) {
    Navigator.of(context).pushNamed(routeName);
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
                  onTap: () => _goToScreen(RouteConstant.ORDERS_SCREEN),
                ),
                divider(),
                settingsItem(
                  context,
                  'Change Username/\nPassword',
                  Icons.person,
                  onTap: () =>
                      _goToScreen(RouteConstant.CHANGE_USERNAME_SCREEN),
                ),
                divider(),
                settingsItem(
                  context,
                  'FAQs',
                  Icons.question_answer,
                  onTap: () => _goToScreen(RouteConstant.FAQs_SCREEN),
                ),
                divider(),
                settingsItem(
                  context,
                  'Manage Address',
                  Icons.location_pin,
                  onTap: () => _goToScreen(RouteConstant.MANAGE_ADDRESS_SCREEN),
                ),
                divider(),
                settingsItem(
                  context,
                  'T&C',
                  Icons.quick_contacts_dialer,
                  onTap: () => _goToScreen(RouteConstant.TERMS_CONDITIONS),
                ),
                divider(),
                settingsItem(
                  context,
                  'Notifications',
                  Icons.notifications,
                ),
                divider(),
                settingsItem(
                  context,
                  'LogOut',
                  Icons.logout,
                  onTap: () {
                    setState(() {
                      _isLoading = true;
                    });

                    _authService.logout().then((_) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteConstant.LOGIN_SCREEN,
                        (Route<dynamic> route) => false,
                      );
                      setState(() {
                        _isLoading = false;
                      });
                    });
                  },
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : null,
                ),
                divider(),
                settingsItem(
                  context,
                  'GitHub Repo Link',
                  Icons.verified_user_outlined,
                  onTap: () => _goToScreen(RouteConstant.GITHUB_REPO_LINK),
                ),
              ],
            ),
          ),
        ));
  }
}
