import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget settingsItem(BuildContext context, String text, IconData ic,
    {Function? onTap, Widget? child}) {
  return InkWell(
    onTap: () => onTap!(),
    child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 5, top: 10, bottom: 5),
      child: child ??
          ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            leading: Icon(
              ic,
              size: 20,
              color: Colors.white,
            ),
            title: Text(
              text,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
    ),
  );
}
