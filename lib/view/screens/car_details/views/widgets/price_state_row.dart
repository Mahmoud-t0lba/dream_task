import 'package:dream_task/controller/constants/size.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

class PriceStateRow extends StatelessWidget {
  const PriceStateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const MyText(
            title: 'يوكن بحاله جيده',
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          const MyText(
            title: '8700',
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          5.h,
          const MyText(
            title: 'د٫ك',
            fontSize: 18,
            color: Colors.black,
            letterSpace: 1,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
