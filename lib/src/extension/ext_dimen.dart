import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resource/my_const.dart';

extension ExtDimen on Widget {
  Widget extPadH() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MyConst.defaultPaddingH),
      child: this,
    );
  }

  Widget extPadH24() => extPad(horizontal: 24.w);

  Widget extPad({
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? vertical ?? all ?? 0,
        bottom: bottom ?? vertical ?? all ?? 0,
        left: left ?? horizontal ?? all ?? 0,
        right: right ?? horizontal ?? all ?? 0,
      ),
      child: this,
    );
  }
}
