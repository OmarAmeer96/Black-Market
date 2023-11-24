import 'package:black_market/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.icon});

  final String labelText;
  final String hintText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.almaraiRegular14.copyWith(
        fontSize: 16,
        color: Colors.white.withOpacity(0.7),
      ),
      decoration: InputDecoration(
        fillColor: const Color(0xFF2A2A2A),
        filled: true,
        floatingLabelStyle: Styles.almaraiRegular18.copyWith(
          fontSize: 16,
          color: Colors.white.withOpacity(0.7),
        ),
        labelText: labelText,
        labelStyle: Styles.almaraiRegular18.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white.withOpacity(0.7),
        ),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(width: 2.5),
        enabledBorder: buildOutlineInputBorder(),
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            icon,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        width: width,
      ),
    );
  }
}
