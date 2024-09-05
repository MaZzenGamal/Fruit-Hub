import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hub/generated/assets.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_preference_singleton.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SvgPicture.asset(
          Assets.imagesPlant,
          height: 172,
          width: 192,
        ),
        Center(
          child: SvgPicture.asset(
            Assets.imagesLogo,
            height: 173,
            width: 178,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          height: 156,
          width: double.infinity,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnboardingViewSeen);
      Future.delayed(const Duration(seconds: 3), () {
        if (isOnBoardingViewSeen) {
          Navigator.pushReplacementNamed(context, SigninView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      });

  }
}
