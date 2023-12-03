import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class MyFontStyle {
  static TextStyle get regular => const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w400,
      );

  static TextStyle get regular10 => regular.copyWith(
        fontSize: 10.sp,
      );

  static TextStyle get regular12 => regular.copyWith(
        fontSize: 12.sp,
      );

  static TextStyle get regular14 => regular.copyWith(
        fontSize: 14.sp,
      );

  static TextStyle get medium => const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
      );

  static TextStyle get medium10 => medium.copyWith(
        fontSize: 10.sp,
      );

  static TextStyle get medium12 => medium.copyWith(
        fontSize: 12.sp,
      );

  static TextStyle get medium14 => medium.copyWith(
        fontSize: 14.sp,
      );

  static TextStyle get semiBold => const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w600,
      );

  static TextStyle get semiBold9 => semiBold.copyWith(
        fontSize: 9.sp,
      );

  static TextStyle get semiBold10 => semiBold.copyWith(
        fontSize: 10.sp,
      );

  static TextStyle get semiBold12 => semiBold.copyWith(
        fontSize: 12.sp,
      );

  static TextStyle get bold => const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bold12 => bold.copyWith(
        fontSize: 12.sp,
      );

  static TextStyle get bold14 => bold.copyWith(
        fontSize: 14.sp,
      );

  static TextStyle get bold18 => bold.copyWith(
        fontSize: 18.sp,
      );

  static TextStyle get bold20 => bold.copyWith(
        fontSize: 20.sp,
      );
}
