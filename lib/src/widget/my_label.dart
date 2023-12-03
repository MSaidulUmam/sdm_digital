import 'package:flutter/material.dart';

import '../resource/resource.dart';

abstract class MyLabel {
  static Widget green(String text) {
    return Container(
      padding: MyDimen.pad(horizontal: 6.w),
      decoration: const ShapeDecoration(
        color: MyColor.greenStatus,
        shape: StadiumBorder(),
      ),
      child: Text(
        text,
        style: MyFontStyle.semiBold9.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
