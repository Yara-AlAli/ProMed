import 'package:flutter/material.dart';
import 'package:promed_test/Enums/ProfileBtns.dart';
import 'package:promed_test/main.dart';
import 'HelpingWidgets.dart';

class ProfileBar extends StatefulWidget {
  final ProfileBtns Current;
  const ProfileBar(this.Current, {super.key});

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MyApp.screenWidth.toDouble(),
      height: 41,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 48 / MyApp.screenWidth,
        vertical: 8,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          ProfileBtn(widget.Current == ProfileBtns.Work, "Work", ()),
          SizedBox(
            width: 48,
          ),
          ProfileBtn(widget.Current == ProfileBtns.Info, "Info", ()),
          SizedBox(
            width: 48,
          ),
          ProfileBtn(widget.Current == ProfileBtns.Portfolio, "Portfolio", ()),
          SizedBox(
            width: 48,
          ),
          ProfileBtn(widget.Current == ProfileBtns.Rating, "Rating", ()),
          SizedBox(
            width: 48,
          ),
          ProfileBtn(widget.Current == ProfileBtns.Posts, "Posts", ()),
        ],
      ),
    );
  }
}
