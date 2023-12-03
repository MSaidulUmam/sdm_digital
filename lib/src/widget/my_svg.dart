import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySvg extends StatelessWidget {
  const MySvg(
    this.asset, {
    this.width,
    this.height,
    this.size,
    this.fit,
    this.padding,
    super.key,
  });

  final String? asset;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    if (asset == null) {
      return const SizedBox();
    }

    final svg = SvgPicture.asset(
      asset!,
      width: size ?? width,
      height: size ?? height,
      fit: fit ?? BoxFit.contain,
      package: 'sdm_digital',
    );

    if (padding != null) {
      return Container(
        padding: padding,
        child: svg,
      );
    }

    return svg;
  }
}
