import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/constants/size.dart';
import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/view/screens/car_details/views/widgets/custom_icon.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarPageIcons extends StatelessWidget {
  const CarPageIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomIcon(
          img: AppImages.carPageCall,
          color: ColorManager.blueColor.withOpacity(0.25),
          padding: const EdgeInsets.all(10),
        ),
        CustomIcon(
          img: AppImages.carPageChatbyWhatsapp,
          color: ColorManager.blueColor.withOpacity(0.25),
          padding: const EdgeInsets.all(10),
        ),
        CustomIcon(
          color: ColorManager.grayColor.withOpacity(0.7),
          padding: const EdgeInsets.all(10),
          // width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.add_location_outlined, color: Colors.white),
              5.w,
              const MyText(
                title: 'موقع السيارة',
                color: Colors.white,
                fontSize: 16,
              ),
            ],
          ),
        ),
        CustomIcon(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          border: Border.all(color: ColorManager.grayColor, width: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                AppImages.carPageBook,
                width: 20,
                height: 20,
                color: ColorManager.grayColor,
              ),
              5.w,
              const MyText(
                title: 'موقع السيارة',
                color: ColorManager.grayColor,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
