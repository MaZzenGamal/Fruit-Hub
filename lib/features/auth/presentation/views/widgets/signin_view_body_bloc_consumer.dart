import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/helper_functions/build_error_bar.dart';
import '../../../../../core/widgets/custom_progress_hud.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../controller/signin_cubit/signin_cubit.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SigninErrorState) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoadingState ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}


