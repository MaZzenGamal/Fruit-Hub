import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_preference_singleton.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title1,
    required this.title2,
    required this.title3, required this.isVisible});

  final String image, backgroundImage, subtitle, title1, title2, title3;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
            Positioned(
                bottom: 25,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                )),
            Visibility(
              visible: isVisible,
              child:  Padding(
                padding: EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnboardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(SigninView.routeName);
                  },
                  child: const Text(
                    'تخط',
                    style: TextStyle(color: Color(0xff949D9E)),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: Center(
              child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: title1,
                        style: TextStyles.textStyle23.copyWith(color: Colors.black),
                      ),
                      TextSpan(
                        text: title2,
                        style:
                        TextStyles.textStyle23.copyWith(
                            color: const Color(0xFF1B5E37)),
                      ),
                      TextSpan(
                        text: title3,
                        style:
                        TextStyles.textStyle23.copyWith(
                            color: const Color(0xFFF4A91F)),
                      ),
                    ],
                  ))),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 20, right: 20),
            child: Text(
              subtitle,
              style: TextStyles.textStyle13w600
                  .copyWith(color: const Color(0xFF4E5556)),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
