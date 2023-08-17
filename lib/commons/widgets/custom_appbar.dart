import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.width;

    return Container(
      width: w * 0.9,
      height: h * 0.15,
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(Icons.person_2_outlined)),
          ),
          Text("Suvaye Tech",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          Spacer(),
          Icon(Icons.notifications)
        ],
      ),
    );
  }
}
