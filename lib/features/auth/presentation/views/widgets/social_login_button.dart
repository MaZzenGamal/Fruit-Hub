import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key, required this.text, required this.image, required this.onPressed});

  final String text;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFDCDEDE),
          )
        ),
      ),
        child: ListTile(
          visualDensity: const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading:SvgPicture.asset(image),
          title:Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyles.textStyle16w600.copyWith(color: Colors.black),
          ),
        )),
    );
  }
}
