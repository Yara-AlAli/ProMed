import 'package:flutter/material.dart';
import 'package:promed_test/Constants/Colors.dart';
import 'package:promed_test/main.dart';

import 'HelpingWidgets.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //width: MyApp.screenWidth.toDouble(),
          height: 96,
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).size.width * 48 / MyApp.screenWidth,
            vertical: 24,
          ),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey),
            ),
          ),
          child: const Center(
            child: Row(
              children: [
                Image(image: AssetImage("Images/Logo.png")),
                Spacer(),
                NavBtn(false, "About", ()),
                NavBtn(false, "Privacy Policy", ()),
                NavBtn(false, "Contact Us", ()),
                Spacer(),
                Text(
                  "© 2023 Pro Med, Inc. All rights reserved.",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 72,
          //width: MyApp.screenWidth.toDouble(),
          color: primary,
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).size.width * 48 / MyApp.screenWidth,
            vertical: 24,
          ),
          child: Row(
            children: [
              Text(
                "Powered by",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Image(
                  image: AssetImage("Images/Logo.png"),
                  height: 24,
                ),
              ),
              Text(
                "2023",
              ),
              Spacer(),
              Text(
                "Download ProMed for Doctors",
              ),
              ImageBtn("Images/AppStore.png", ()),
              ImageBtn("Images/PlayStore.png", ()),
              Text(
                "Download ProMed for Patients",
              ),
              ImageBtn("Images/AppStore.png", ()),
              ImageBtn("Images/PlayStore.png", ()),
            ],
          ),
        ),
      ],
    );
  }
}
