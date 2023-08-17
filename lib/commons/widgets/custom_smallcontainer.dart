import 'package:flutter/material.dart';

class SmallContianer extends StatelessWidget {
  final IconData customIcon;
  final Color iconcolor;
  final Color bgcolor;
  final String heading;

  const SmallContianer(
      {super.key,
      required this.customIcon,
      required this.bgcolor,
      required this.iconcolor,
      required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      // width: 150,
      height: 20,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: bgcolor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            customIcon,
            color: iconcolor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(heading)
        ],
      ),
    );
  }
}
