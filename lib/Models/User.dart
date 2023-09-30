import 'package:promed_test/Models/Clinic.dart';
import 'package:promed_test/Models/Hospital.dart';

class User {
  String Name, ID, Specialty, ProfilePicture;
  int Complete, Followers, Posts, Following;
  List<Clinic> Clinics;
  List<Hospital> Hospitals;
  User(
      this.Clinics,
      this.Complete,
      this.Followers,
      this.Following,
      this.Hospitals,
      this.ID,
      this.Name,
      this.Posts,
      this.ProfilePicture,
      this.Specialty);
}
