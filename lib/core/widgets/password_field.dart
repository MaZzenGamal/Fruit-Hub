import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
   bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      obscureText: isObscure,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        child:isObscure? const Icon(
          Icons.visibility,
          color: Color(0xffC9CECF),
        ) : const Icon(
          Icons.visibility_off,
          color: Color(0xffC9CECF),
        ),
      ),
    );
  }
}
