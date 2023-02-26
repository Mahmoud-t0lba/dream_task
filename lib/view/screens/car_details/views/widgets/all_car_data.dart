import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/controller/constants/size.dart';
import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CarPageDataColumn extends StatelessWidget {
  const CarPageDataColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'اللون الخارجي',
          data: 'ابيض',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'اللون الداخلي',
          data: 'اخضر',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'نوع المقاعد',
          data: 'مخمل',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'فتحة سقف',
          data: 'نعم',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'كاميرا خلفية',
          data: 'نعم',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'سينسر خلفي',
          data: 'امامي - خلفي',
        ),
        CarPageData(
          img: AppImages.carPageSlindr,
          fetcher: 'سليندر',
          data: '6',
        ),
        CarPageData(
          img: AppImages.menuQ,
          fetcher: 'ناقل الحركة',
          data: 'أوتوماتيك',
        ),
      ],
    );
  }
}

class CarPageData extends StatelessWidget {
  final String img, fetcher, data;

  const CarPageData({
    super.key,
    required this.fetcher,
    required this.data,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: ColorManager.grayColor.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                img,
                width: 20,
                height: 20,
                color: Colors.black,
              ),
              10.w,
              MyText(title: fetcher, color: Colors.black),
            ],
          ),
          SizedBox(
            width: 100,
            child: Center(child: MyText(title: data, color: Colors.black)),
          ),
          0.w,
        ],
      ),
    );
  }
}
