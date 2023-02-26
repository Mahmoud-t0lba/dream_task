import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/constants/size.dart';
import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MakfolaTo extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final EdgeInsets? margin, padding;
  const MakfolaTo(
      {super.key, this.child, this.color, this.margin, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: color ?? ColorManager.pinkColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AppImages.carPageMakfula,
                width: 20,
                height: 20,
              ),
              10.w,
              const MyText(
                title: 'Makfola to 70000 KM',
                color: Colors.white,
              ),
            ],
          ),
    );
  }
}

MakfolaTo get allCaresCard {
  return MakfolaTo(
    color: ColorManager.grayColor.withOpacity(0.2),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(AppImages.menuUser),
          backgroundColor: Colors.black.withOpacity(0.2),
        ),
        const MyText(
          title: 'يوكن للسيارات المعتمدة',
          fontSize: 16,
          color: ColorManager.grayColor,
        ),
        const MyText(
          title: 'كل السيارات',
          fontSize: 16,
          color: ColorManager.grayColor,
        ),
      ],
    ),
  );
}
