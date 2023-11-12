import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields({
    Key? key,
    required this.hint,
    required this.obscureText,
    required this.enable,
    this.controller,
    this.validator,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);

  final String hint;
  final bool enable;
  final bool obscureText;
  final TextEditingController? controller;
  final String? initialValue;
  final validator;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextFormField(
        enabled: enable,
        initialValue: initialValue,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide(
          //     color: bg_Textformfield,
          //   ),
          // ),
        ),
      ),
    );
  }
}

class CustomeTextFieldSetorSampah extends StatelessWidget {
  const CustomeTextFieldSetorSampah({
    Key? key,
    required this.hint,
    required this.obscureText,
    required this.enable,
    this.controller,
    this.validator,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);

  final String hint;
  final bool enable;
  final bool obscureText;
  final TextEditingController? controller;
  final String? initialValue;
  final validator;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextFormField(
        enabled: enable,
        initialValue: initialValue,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

Widget reusableText(
    String text, Color color, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
