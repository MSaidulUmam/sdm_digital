import 'package:flutter/material.dart';

extension ExtWidget on Widget {
  Widget extMaterial({
    VoidCallback? onTap,
    BorderRadius? borderRadius,
  }) {
    if (onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: this,
        ),
      );
    }

    return Material(
      color: Colors.transparent,
      child: this,
    );
  }
}
