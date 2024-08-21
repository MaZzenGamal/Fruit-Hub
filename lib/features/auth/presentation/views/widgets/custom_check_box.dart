import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../generated/assets.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChanged});

  final bool isChecked;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color: isChecked ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.50,
                  color:
                      isChecked ? Colors.transparent : const Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(2),
                  child: SvgPicture.asset(
                    Assets.imagesCheckIcon,
                    width: 16,
                    height: 16,
                  ),
                )
              : const SizedBox()),
    );
  }
}
