import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:promed_test/Constants/Colors.dart';
import 'package:promed_test/Enums/ProfileBtns.dart';
import 'package:promed_test/Widgets/Footer.dart';
import 'package:promed_test/Widgets/HelpingWidgets.dart';
import 'package:promed_test/Widgets/NavBar.dart';
import 'package:promed_test/Widgets/ProfileBar.dart';
import 'package:promed_test/main.dart';

import '../Enums/NavBtns.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ScrollController conHor = ScrollController();
  ScrollController conVer = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: conHor,
        trackVisibility: true,
        interactive: true,
        child: SingleChildScrollView(
          controller: conHor,
          scrollDirection: Axis.horizontal,
          child: Scrollbar(
            controller: conVer,
            child: SingleChildScrollView(
              controller: conVer,
              scrollDirection: Axis.vertical,
              child: Container(
                //width: MyApp.screenWidth.toDouble(),
                width: max(MyApp.screenWidth.toDouble(),
                    MediaQuery.of(context).size.width),
                child: Column(
                  children: [
                    const NavBar(NavBtns.None),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width *
                            48 /
                            MyApp.screenWidth,
                        vertical: 48,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 600,
                                height: 96,
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  right: 24,
                                  top: 12,
                                  bottom: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "Images/ExclamationMark.png"),
                                        ),
                                        Spacer(),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Complete your profile (${MyApp.user.Complete}%)",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        LinearPercentIndicator(
                                          width: 288,
                                          lineHeight: 8,
                                          percent: MyApp.user.Complete / 100,
                                          progressColor: Color(0xFF27AE60),
                                          barRadius: Radius.circular(4),
                                          padding: EdgeInsets.all(0),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 400,
                                          child: Text(
                                            '''You must complete the Info section and the Work section to display your account to the public''',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Spacer(),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Complete",
                                            style: TextStyle(
                                              color: text,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage(MyApp.user.ProfilePicture),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Spacer(),
                                  Text("ID: ${MyApp.user.ID}"),
                                  Row(
                                    children: [
                                      Text(
                                        MyApp.user.Name,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      ImageBtn("Images/Edit.png", ())
                                    ],
                                  ),
                                  Text(MyApp.user.Specialty),
                                  //Spacer(),
                                ],
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(0, 5),
                                      blurRadius: 25,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                                width: 391,
                                height: 106,
                                padding: EdgeInsets.symmetric(
                                  vertical: 24,
                                  horizontal: 48,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "${MyApp.user.Posts}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Colors.black,
                                          ),
                                        ),
                                        UnderlinedTextBtn("Posts", ()),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "${MyApp.user.Followers}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Colors.black,
                                          ),
                                        ),
                                        UnderlinedTextBtn("Followers", ()),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "${MyApp.user.Following}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Colors.black,
                                          ),
                                        ),
                                        UnderlinedTextBtn("Following", ()),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ProfileBar(ProfileBtns.Work),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width *
                            48 /
                            MyApp.screenWidth,
                        vertical: 48,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              MyTitle("My Clinics"),
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: text,
                                    ),
                                    Text(
                                      "Add Clinic",
                                      style: TextStyle(
                                        color: text,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: 660 * 2 + 24,
                            child: GridView(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 24,
                                      mainAxisSpacing: 24,
                                      childAspectRatio: 660 / 320),
                              children: MyApp.user.Clinics
                                  .map((e) => Container(
                                        height: 320,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: secondary,
                                        ),
                                        padding: EdgeInsets.all(16),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: 16,
                                              top: 12,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.more_horiz,
                                                  color: text,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: 96,
                                                      height: 96,
                                                      padding: EdgeInsets.zero,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFBDBDBD),
                                                        ),
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            "Images/Map.png"),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Price",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${e.Price}",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      e.Online
                                                          ? "Online"
                                                          : "Offline",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Switch(
                                                      value: e.Online,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          e.Online = !e.Online;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      e.Name,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      e.Place,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Container(
                                                      width: 520,
                                                      height: 160,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFBDBDBD),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height:
                                                                (160) / 5 - 1,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                bottom:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFBDBDBD),
                                                                ),
                                                              ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 18,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Preview Length: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "${e.PreviewLength}m",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: (160) / 5,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                bottom:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFBDBDBD),
                                                                ),
                                                              ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 18,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Preview Start & End: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "${e.PreviewStartEnd}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: (160) / 5,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                bottom:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFBDBDBD),
                                                                ),
                                                              ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 18,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Break between Appointments: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "${e.BreakAppointments}m",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: (160) / 5,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border(
                                                                bottom:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFBDBDBD),
                                                                ),
                                                              ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 18,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Available Hours: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  e.AvailableHours
                                                                      .join(
                                                                          ', '),
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                IconButton(
                                                                  onPressed:
                                                                      () {},
                                                                  icon: Icon(
                                                                    Icons
                                                                        .more_horiz,
                                                                    color: text,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height:
                                                                (160) / 5 - 1,
                                                            decoration:
                                                                BoxDecoration(
                                                                    /*border: Border(
                                                                bottom: BorderSide(
                                                                  color: Color(
                                                                      0xFFBDBDBD),
                                                                ),
                                                              ),*/
                                                                    ),
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 18,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Rest Times: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  e.RestTimes
                                                                      .join(
                                                                          ', '),
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                                Spacer(),
                                                                IconButton(
                                                                  onPressed:
                                                                      () {},
                                                                  icon: Icon(
                                                                    Icons
                                                                        .more_horiz,
                                                                    color: text,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 520,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          TextButton(
                                                            onPressed: () {},
                                                            child: Text(
                                                              "Appointment Times",
                                                              style: TextStyle(
                                                                color: text,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              TextButton(
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  "Or Book by Number: ${e.MobileNumber}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: text,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Icon(
                                                                Icons
                                                                    .phone_outlined,
                                                                size: 10,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              SizedBox(
                                                                width: 2,
                                                              ),
                                                              Text(
                                                                e.TelephoneNumber,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              SizedBox(
                                                                width: 8,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .phone_outlined,
                                                                size: 10,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              SizedBox(
                                                                width: 2,
                                                              ),
                                                              Text(
                                                                e.TelephoneNumber,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            height: 52,
                          ),
                          Row(
                            children: [
                              MyTitle("Hospitals"),
                              TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: text,
                                    ),
                                    Text(
                                      "Add Hospital",
                                      style: TextStyle(
                                        color: text,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          GridView(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 24,
                                    mainAxisSpacing: 24,
                                    childAspectRatio: 400 / 100),
                            children: MyApp.user.Hospitals
                                .map((e) => Container(
                                      width: 400,
                                      height: 100,
                                      padding: EdgeInsets.only(
                                        left: 24,
                                        top: 16,
                                        right: 16,
                                        bottom: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: secondary,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "${e.From}, ${e.To}",
                                                style: TextStyle(
                                                  color: text,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.more_horiz,
                                                  color: text,
                                                ),
                                              )
                                            ],
                                          ),
                                          Text(
                                            e.Name,
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            e.Place,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
