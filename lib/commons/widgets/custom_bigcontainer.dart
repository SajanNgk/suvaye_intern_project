import 'package:flutter/material.dart';
import 'package:suvaye_intern_project/commons/utils/colors.dart';

class CustomBigContainer extends StatelessWidget {
  final String maintext;
  final String bodytext;

  const CustomBigContainer(
      {super.key, required this.maintext, required this.bodytext});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Appcolors.kgreen.withOpacity(0.4),
          borderRadius: BorderRadius.circular(16)),
      width: w,
      height: h * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                maintext,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(bodytext),
          )
        ],
      ),
    );
  }
}
