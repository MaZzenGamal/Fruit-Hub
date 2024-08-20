import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1.5,
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text('أو',style: TextStyles.textStyle16w600,),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
