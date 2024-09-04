import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../generated/assets.dart';
import 'dont_have_an_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.textStyle13w600
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل الدخول',
              textStyle: TextStyles.textStyle16w700,
            ),
            const SizedBox(
              height: 32,
            ),
            const DontHaveAnAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: (){},
              image: Assets.imagesGoogleIcon,
              text: 'تسجيل بواسطة جوجل',
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: (){},
              image: Assets.imagesAppleIcon,
              text: 'تسجيل بواسطة أبل',
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: (){},
              image: Assets.imagesFacebookIcon,
              text: 'تسجيل بواسطة فيسبوك',
            ),
          ],
        ),
      ),
    );
  }
}


