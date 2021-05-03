import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class NotificationToggle extends StatefulWidget {
  @override
  _NotificationToggleState createState() => _NotificationToggleState();
}

class _NotificationToggleState extends State<NotificationToggle> {
  bool switchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: appBarBackButton(context),
        centerTitle: true,
        title: const Text('Notifications'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              'Get Notifications from Relic Bazaar on your mobile!!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Allow Push Notifications from Relic Bazaar App',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          RelicBazaarStackedView(
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.14,
            child: ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              dense: true,
              leading: const Icon(
                Icons.notifications_active,
                size: 30,
                color: Colors.white,
              ),
              title: const Text('Notifications(on/off)',
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              trailing: Switch(
                value: switchedOn,
                onChanged: (bool value) {
                  setState(() {
                    switchedOn = value;
                  });
                },
                activeColor: Colors.white,
                activeTrackColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
