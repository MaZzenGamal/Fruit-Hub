import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

AppBar buildAppBar(context,{required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title:  Text(
      title,
      style: TextStyles.textStyle19,
    ),
    leading: GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios_new),
    ),
  );
}