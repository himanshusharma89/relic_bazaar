import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/stacked_container.dart';

Widget addressTextField(BuildContext context,
    {IconData icon,
    String hint,
    TextEditingController text,
    TextInputType type}) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  return StackedContainer(
    height: height * 0.06,
    width: width * 0.9,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(icon),
          Expanded(
              child: TextFormField(
            style: const TextStyle(
              fontFamily: 'pix M 8pt',
              fontSize: 16,
              color: RelicColors.primaryBlack,
            ),
            keyboardType: type,
            controller: text,
            decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                )),
          )),
        ],
      ),
    ),
  );
}
