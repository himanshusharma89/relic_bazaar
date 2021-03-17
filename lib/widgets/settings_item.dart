import 'package:flutter/material.dart';

Widget settingsItem(BuildContext context, String text, IconData ic,
    {Widget tags}) {
  return InkWell(
    onTap: () {
      if (tags != null) {
        Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => tags));
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
