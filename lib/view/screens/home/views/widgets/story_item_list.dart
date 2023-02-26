import 'package:dream_task/view/screens/home/controllers/controller.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryItemList extends GetView<HomeController> {
  const StoryItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: controller.carsName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(controller.carsImages[index]),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    color: Colors.deepOrange,
                    width: 2,
                  ),
                ),
              ),
              MyText(
                title: controller.carsName[index],
                fontSize: 12,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
