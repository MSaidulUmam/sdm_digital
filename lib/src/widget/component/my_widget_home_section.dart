import 'package:flutter/material.dart';

import '../../resource/resource.dart';

class MyWidgetHomeSection extends StatelessWidget {
  const MyWidgetHomeSection({
    this.title,
    this.buttonTitle,
    this.onTap,
    super.key,
  });

  final String? title;
  final String? buttonTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyDimen.pad(horizontal: 16.w),
      child: Row(
        children: [
          Text(
            title ?? '',
            style: MyFontStyle.bold14,
          ),
          const Spacer(),
          Text(
            buttonTitle ?? 'Lihat Semua',
            style: MyFontStyle.semiBold12.copyWith(
              color: MyColor.blue,
            ),
          ).extCupertino(onTap: onTap),
        ],
      ),
    );
  }
}
