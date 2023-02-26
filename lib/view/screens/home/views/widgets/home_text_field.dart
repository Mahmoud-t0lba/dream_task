import 'package:dream_task/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      customPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'search for your car',
      fillColor: Colors.white,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      prefixIcon: Icon(Icons.search_sharp, color: Colors.grey, size: 30),
      inputType: InputType.text,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
    );
  }
}
