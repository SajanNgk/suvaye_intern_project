import 'package:flutter/material.dart';
import 'package:suvaye_intern_project/commons/utils/colors.dart';
import 'package:suvaye_intern_project/commons/widgets/custom_appbar.dart';
import 'package:suvaye_intern_project/commons/widgets/custom_bigcontainer.dart';
import 'package:suvaye_intern_project/commons/widgets/custom_dots.dart';
import 'package:suvaye_intern_project/commons/widgets/custom_smallcontainer.dart';
import 'package:suvaye_intern_project/commons/widgets/custom_textlines.dart';

class UIpage extends StatelessWidget {
  const UIpage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Appcolors.kpurple, items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Today',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.design_services),
          label: 'Services',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'Chat',
        )
      ]),
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  "Hello,Suvaye Tech",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextLines(boldOne: "Services", seemore: "See More"),
              const CustomBigContainer(
                maintext: 'App Development',
                bodytext: 'Develop beautiful fast mobile applications',
              ),
              const Dots(),
              const CustomTextLines(boldOne: "Outline", seemore: "See More"),
              Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  width: double.infinity,
                  height: 120,
                  child: Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 2.6,
                      children: [
                        SmallContianer(
                          customIcon: Icons.app_blocking_sharp,
                          bgcolor: Appcolors.kpurple.withOpacity(0.4),
                          heading: "Apps",
                          iconcolor: Appcolors.kpurple,
                        ),
                        SmallContianer(
                          customIcon: Icons.web_stories,
                          bgcolor: Appcolors.kpink.withOpacity(0.4),
                          heading: "Websites",
                          iconcolor: Appcolors.kpink,
                        ),
                        SmallContianer(
                          customIcon: Icons.description,
                          bgcolor: Appcolors.korange.withOpacity(0.5),
                          heading: "Designs",
                          iconcolor: Appcolors.korange,
                        ),
                        SmallContianer(
                          customIcon: Icons.people,
                          bgcolor: Appcolors.kblue.withOpacity(0.5),
                          heading: "Consultant",
                          iconcolor: Appcolors.kblue,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
