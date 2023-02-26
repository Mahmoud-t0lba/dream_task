import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/controller/routes/app_routes.dart';
import 'package:dream_task/view/screens/home/controllers/controller.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeGridView extends GetView<HomeController> {
  final int? itemCount;
  final double? height;
  final ScrollPhysics? physics;
  const HomeGridView({super.key, this.itemCount, this.height, this.physics});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Get.height * 0.5,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        physics: physics ?? const BouncingScrollPhysics(),
        itemCount: itemCount ?? controller.carsGridModels.length,
        gridDelegate: gridDelegate,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.toNamed(Routes.carDetails),
            child: Container(
              color: Colors.grey.withOpacity(0.3),
              child: Column(
                children: [
                  MyText(
                    title: controller.carsGridModels[index],
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  Image.asset(
                    controller.carsImages[index],
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                  const CarData(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CarData extends GetView<HomeController> {
  const CarData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CarDetailsItem(img: AppImages.homeAd1, title: 'Price', title2: '12800'),
        CarDetailsItem(
            img: AppImages.homeAd2, title: 'made year', title2: '2019'),
        CarDetailsItem(img: AppImages.homeAd3, title: 'speed', title2: '20000'),
        CarDetailsItem(
            img: AppImages.homeAd4, title: 'guarantee', title2: '2024'),
      ],
    );
  }
}

class CarDetailsItem extends StatelessWidget {
  final String img, title, title2;

  const CarDetailsItem({
    super.key,
    required this.img,
    required this.title,
    required this.title2,
  });
  @override
  Widget build(BuildContext context) {
    var size = (Get.width * 0.5) / 4.5;
    return Container(
      width: size,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            img,
            color: ColorManager.grayColor,
            width: 15,
            height: 15,
          ),
          MyText(
            title: title,
            alien: TextAlign.center,
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          FittedBox(
            child: MyText(
              title: title2,
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

SliverGridDelegateWithFixedCrossAxisCount get gridDelegate {
  return const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 0.8,
  );
}
