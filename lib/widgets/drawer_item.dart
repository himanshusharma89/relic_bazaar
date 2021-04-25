import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    this.icon,
    this.title,
    this.onTap,
    this.child,
  });

  final IconData icon;
  final String title;
  final GestureTapCallback onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child ??
          ListTile(
            leading: Icon(
              icon,
              color: RelicColors.backgroundColor,
              size: 30.0,
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Pixer',
                color: RelicColors.backgroundColor,
                fontSize: 15.0,
              ),
            ),
            onTap: onTap,
          ),
    );
  }
}
