import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/constants/size.dart';
import 'package:dream_task/view/screens/car_details/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarPageHeader extends StatelessWidget {
  const CarPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.image1),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomIcon(
                img: AppImages.back,
                onTap: () => Get.back(),
              ),
              const Spacer(),
              Row(
                children: [
                  const CustomIcon(img: AppImages.carPageShare),
                  10.w,
                  const CustomIcon(img: AppImages.carPageFav),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
