import 'package:flutter/material.dart';

class HomeAdBanner extends StatelessWidget {
  final String img;
  const HomeAdBanner({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
