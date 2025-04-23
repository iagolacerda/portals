// lib/shared/widgets/app_svg_icon.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvg extends StatelessWidget {
  final String assetPath;
  final double size;
  final Color? color;

  const AppSvg({
    super.key,
    required this.assetPath,
    this.size = 20.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      width: size,
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
    // return SvgPicture.asset(
    //   assetPath,
    //   width: size,
    //   height: size,
    //   colorFilter: color != null
    //       ? ColorFilter.mode(color!, BlendMode.srcIn)
    //       : null,
    // );
  }
}

