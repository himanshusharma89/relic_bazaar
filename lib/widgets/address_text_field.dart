import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/text_field_decoration.dart';

Widget addressTextField(BuildContext context,
    {IconData icon,
    String hint,
    TextEditingController text,
    TextInputType type}) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  return RelicBazaarStackedView(
    height: height * 0.06,
    width: width * 0.9,
    child: Expanded(
        child: TextFormField(
            style: const TextStyle(
              fontFamily: 'pix M 8pt',
              fontSize: 16,
              color: RelicColors.primaryBlack,
            ),
            keyboardType: type,
            controller: text,
            decoration:
                textFieldDecoration(hintText: hint, icon: Icon(icon)))),
  );
}
