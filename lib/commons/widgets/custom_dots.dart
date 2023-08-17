import 'package:flutter/material.dart';

class Dots extends StatefulWidget {
  const Dots({Key? key}) : super(key: key);

  @override
  State<Dots> createState() => _DotsState();
}

class _DotsState extends State<Dots> {
  int selectedDot = 0;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    // final h = MediaQuery.of(context).size.width;

    return Container(
      width: w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [buildContainer(0), buildContainer(1), buildContainer(2)],
      ),
    );
  }

  Widget buildContainer(int selectedIndex) {
    bool isSelected = selectedIndex == selectedDot;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDot = isSelected ? -1 : selectedIndex;
        });
      },
      child: Container(
        margin: EdgeInsets.all(2),
        width: 5,
        height: 5,
        decoration: BoxDecoration(
            color: isSelected ? Colors.grey : Colors.black.withOpacity(0.2),
            shape: BoxShape.circle),
      ),
    );
  }
}
