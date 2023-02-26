import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Badge(
        smallSize: 10,
        backgroundColor: Colors.orange,
        alignment: AlignmentDirectional.topStart,
        isLabelVisible: true,
        child: Icon(
          Icons.notifications_none,
          color: Colors.white,
        ),
        label: Text(
          '2',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
