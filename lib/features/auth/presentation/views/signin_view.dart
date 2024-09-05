import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/services/service_locator.dart';
import 'package:fruit_hub/features/auth/presentation/controller/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repos/auth_repo.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(title: 'تسجيل الدخول', context),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }


}


