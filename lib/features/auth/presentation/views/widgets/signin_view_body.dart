import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/colors.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/widgets/or_divider.dart';
import 'package:fruit_hub/core/widgets/password_field.dart';
import 'package:fruit_hub/features/auth/presentation/controller/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../generated/assets.dart';
import 'dont_have_an_account_widget.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
               CustomTextFormField(
                onSaved: (value){
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value){
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signInWithEmailAndPassword(
                        email: email, password: password);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                  }
                },
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
                onPressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                text: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesAppleIcon,
                text: 'تسجيل بواسطة أبل',
              ),
              const SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
                image: Assets.imagesFacebookIcon,
                text: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


