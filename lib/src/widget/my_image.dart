import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage(
    this.asset, {
    this.width,
    this.height,
    this.size,
    this.fit,
    super.key,
  });

  final String? asset;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (asset == null) {
      return const SizedBox();
    }
    return Image.asset(
      asset!,
      width: size ?? width,
      height: size ?? height,
      fit: fit,
      package: 'sdm_digital',
    );
  }
}
