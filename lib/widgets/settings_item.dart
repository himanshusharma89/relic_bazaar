import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retro_shopping/services/auth_service.dart';

Widget settingsItem(BuildContext context, String text, IconData ic,
    {String routeName, bool push}) {
      final AuthenticationService _authenticationService = AuthenticationService();
  return InkWell(
    onTap: () {
      if (routeName != null) {
        if (push) {
          Navigator.of(context).pushNamed(routeName);
        } else {
          _authenticationService.logout(context);
        }
      }
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 15,right: 5, top: 10,bottom: 5),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        leading: Icon(
          ic,
          size: 20,
          color: Colors.white,
        ),
        title: Text(
          text, style: const TextStyle(
            fontWeight: FontWeight.normal, fontSize: 16) ,
        ),
        trailing: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.keyboard_arrow_right),
        ),
      ),
    ),
  );
}
