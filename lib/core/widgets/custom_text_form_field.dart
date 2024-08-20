import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.controller,
    this.textInputType,
    this.maxLines = 1,
    this.initialValue,
    this.suffixIcon,
  });

  final Function(String)? onChanged;
  final String? hintText;
  final String? initialValue;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final int? maxLines;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      initialValue: initialValue,
      maxLines: maxLines,
      keyboardType: textInputType,
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: Icon(
          suffixIcon,
          color: const Color(0xffC9CECF),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF949D9E),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color(0xFFE6E9E9),
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFFE6E9E9))),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
      ),
    );
  }
}
