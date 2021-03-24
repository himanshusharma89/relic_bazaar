import 'package:flutter/material.dart';

Widget settingsItem(BuildContext context, String text, IconData ic,
    {String routeName, bool push}) {
  return InkWell(
    onTap: () {
      if (routeName != null) {
        if (push) {
          Navigator.of(context).pushNamed(routeName);
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(
              routeName, (Route<dynamic> route) => false);
        }
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
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 20))
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_right),
        )
      ],
    ),
  );
}
