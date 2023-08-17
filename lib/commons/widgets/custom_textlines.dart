import 'package:flutter/material.dart';
import 'package:suvaye_intern_project/commons/utils/colors.dart';

class CustomTextLines extends StatelessWidget {
  final String boldOne;
  final String seemore;

  const CustomTextLines(
      {super.key, required this.boldOne, required this.seemore});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(boldOne,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Appcolors.kgreen)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    seemore,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.forward,
                    size: 15,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
