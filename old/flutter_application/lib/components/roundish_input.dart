import 'package:flutter/material.dart';
import 'package:flutter_application/components/text_field_container.dart';
import 'package:flutter_application/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: darkgreenaccents,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: darkgreenaccents,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
