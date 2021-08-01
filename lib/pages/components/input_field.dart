import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final Color iconColor;
  final bool obscureText;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enable;

  InputField({
    this.controller,
    this.hint,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.iconColor,
    this.obscureText,
    this.textInputType,
    this.onChanged,
    this.enable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: COLOR_BORDER_INPUTFIELD,
        ),
        color: COLOR_BACKGROUND_INPUTFIELD.withOpacity(0.6),
      ),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        enabled: enable,
        style: TextStyle(
          color: COLOR_TEXT_INPUTFIELD,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(17),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: COLOR_TEXT_INPUTFIELD,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
