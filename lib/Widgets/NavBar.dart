import 'package:flutter/material.dart';
import 'package:promed_test/main.dart';

import '../Enums/NavBtns.dart';
import 'HelpingWidgets.dart';

class NavBar extends StatefulWidget {
  final NavBtns Current;
  const NavBar(this.Current, {super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MyApp.screenWidth.toDouble(),
      height: 96,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 48 / MyApp.screenWidth,
        vertical: 24,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          const Image(image: AssetImage("Images/Logo.png")),
          const Spacer(),
          NavBtn((widget.Current == NavBtns.Appoinments), "Appoinments", ()),
          NavBtn((widget.Current == NavBtns.Consultings), "Consultings", ()),
          NavBtn((widget.Current == NavBtns.Community), "Community", ()),
          NavBtn((widget.Current == NavBtns.PatientsArchive),
              "Patients Archive", ()),
          NavBtn((widget.Current == NavBtns.Subscription), "Subscription", ()),
          const Spacer(),
          const ImageBtn("Images/Calendar.png", ()),
          const ImageBtn("Images/Notifications.png", ()),
          ImageBtn(MyApp.user.ProfilePicture, ()),
        ],
      ),
    );
  }
}
