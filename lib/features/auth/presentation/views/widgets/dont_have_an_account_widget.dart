import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟ ',
            style: TextStyles.textStyle16w600
                .copyWith(color: const Color(0xFF949D9E)),
          ),
          TextSpan(
            text: 'قم بإنشاء حساب',
            style: TextStyles.textStyle16w600
                .copyWith(color: const Color(0xFF1B5E37)),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
