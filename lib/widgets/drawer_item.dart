import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

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
            title: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: RelicColors.backgroundColor,
                  size: 30.0,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: 'Pixer',
                            color: RelicColors.backgroundColor,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            onTap: onTap,
          ),
    );
  }
}
