import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final String? img;
  final Function()? onTap;
  final Color? color;
  final EdgeInsets? padding;
  final double? width;
  final Widget? child;
  final Border? border;

  const CustomIcon({
    super.key,
    this.img,
    this.onTap,
    this.color,
    this.padding,
    this.width,
    this.child,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: padding ?? const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color ?? Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.circular(50),
          border: border,
        ),
        child: child ?? SvgPicture.asset(img ?? '', height: 20, width: 20),
      ),
    );
  }
}
