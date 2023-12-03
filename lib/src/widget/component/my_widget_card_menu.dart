import 'package:flutter/material.dart';

import '../../resource/resource.dart';
import '../my_image.dart';

class MyWidgetCardMenu extends StatelessWidget {
  const MyWidgetCardMenu({
    this.asset,
    this.title,
    this.subtitle,
    this.onTap,
    super.key,
  });

  final String? asset;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyDimen.pad(all: 16.w, horizontal: 12.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColor.border,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          MyImage(
            asset,
            size: 32.w,
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: MyFontStyle.semiBold12,
                ),
                Text(
                  subtitle ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: MyFontStyle.medium10.copyWith(
                    color: MyColor.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).extMaterial(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
    );
  }
}
