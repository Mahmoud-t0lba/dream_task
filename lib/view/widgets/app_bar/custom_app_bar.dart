import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/view/widgets/app_bar/notification_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.grayColor.withOpacity(0.7),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppImages.homeMenu, height: 20, width: 20),
          const NotificationIcon(),
        ],
      ),
    );
  }

  @override
  Widget get child => const CustomAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
