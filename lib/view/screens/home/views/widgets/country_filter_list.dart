import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:dream_task/view/screens/home/controllers/controller.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryFilterList extends GetView<HomeController> {
  const CountryFilterList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: controller.carCountry.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: ColorManager.grayColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: MyText(
                title: controller.carCountry[index],
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          );
        },
      ),
    );
  }
}
