import 'package:dream_task/controller/constants/app_images.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarDataCard extends StatelessWidget {
  final String img, title, subtitle;
  final Color? imgColor;

  const CarDataCard({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    this.imgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            img,
            color: imgColor ?? Colors.grey,
            height: 30,
            width: 30,
          ),
          MyText(
            title: title,
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          MyText(
            title: subtitle,
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

class CarDataCardRow extends StatelessWidget {
  const CarDataCardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CarDataCard(
          img: AppImages.carPageSlindr,
          title: 'Slindr',
          subtitle: '6',
        ),
        CarDataCard(
          img: AppImages.homeAd2,
          title: 'Made Date',
          subtitle: '2019',
        ),
        CarDataCard(
          img: AppImages.homeAd3,
          imgColor: Colors.orange,
          title: 'Walkway',
          subtitle: '2000',
        ),
      ],
    );
  }
}
