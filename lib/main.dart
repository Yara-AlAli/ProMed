import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:promed_test/Models/Clinic.dart';
import 'package:promed_test/Models/Hospital.dart';
import 'package:promed_test/Models/User.dart';

import 'Screens/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static int screenWidth = 1440;
  //static int Complete = 35;
  static Hospital h1 = Hospital("Hospital 01", "Damascus, Syria",
      "Sun: 10 AM - 12 PM", "Tue: 10 AM - 12 PM");
  static List<Hospital> hospitals = [h1, h1];
  static Clinic c1 = Clinic(
      ["Sat: 9 AM - 5 PM", "Sun: 9 AM - 5 PM", "Mon: 9 AM - 5 PM"],
      1,
      "Clinic 01",
      false,
      "Images/Map.png",
      "Damascus, Syria",
      20,
      "5 - 5:30 PM",
      10,
      ["Sat: 9 AM - 5 PM", "Sun: 9 AM - 5 PM", "Mon: 9 AM - 5 PM"],
      "0212334732",
      "0943908303");
  static Clinic c2 = Clinic(
      ["Sat: 9 AM - 5 PM", "Sun: 9 AM - 5 PM", "Mon: 9 AM - 5 PM"],
      1,
      "Clinic 01",
      true,
      "Images/Map.png",
      "Damascus, Syria",
      20,
      "5 - 5:30 PM",
      10,
      ["Sat: 9 AM - 5 PM", "Sun: 9 AM - 5 PM", "Mon: 9 AM - 5 PM"],
      "0212334732",
      "0943908303");
  static List<Clinic> clinics = [c1, c2];
  static User user = User(clinics, 35, 1240, 257, hospitals, "169483839",
      "Dr. Ahmed Khaled", 25, "Images/ProfilePicture.png", "Dentist");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Test',
      home: const Profile(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0, color: Colors.grey),
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.grey),
          labelLarge: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
        PointerDeviceKind.trackpad
      };
}
