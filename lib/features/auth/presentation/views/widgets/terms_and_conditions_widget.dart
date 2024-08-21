import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/colors.dart';

import '../../../../../core/utils/text_styles.dart';
import 'custom_check_box.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({
    super.key,
  });

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckBox(
          onChanged: (value) => setState(() => isTermsAccepted = value),
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.textStyle13w600
                      .copyWith(color: const Color(0xFF949D9E)),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.textStyle13w600
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    /*return Transform.translate(
      offset: const Offset(11, 0),
      child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity:
              const VisualDensity(horizontal: VisualDensity.minimumDensity),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side:  BorderSide(
              width: 1.50,
                color: Color(0xFFDCDEDE),),
          ),
          title:
          contentPadding: EdgeInsets.zero,
          value: false,
          onChanged: (k) {}),
    );*/
  }
}
