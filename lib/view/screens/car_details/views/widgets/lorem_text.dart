import 'package:dream_task/controller/constants/app_strings.dart';
import 'package:dream_task/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

class LoremText extends StatelessWidget {
  const LoremText({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyText(
      title: AppStrings.lorem,
      alien: TextAlign.end,
      color: Colors.black,
      overflow: TextOverflow.ellipsis,
      maxLines: 5,
      padding: EdgeInsets.symmetric(horizontal: 5),
    );
  }
}
