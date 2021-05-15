import 'package:deneme/adminsc.dart';
import 'package:deneme/doctorsc.dart';
import 'package:deneme/healthcarepersc.dart';
import 'package:deneme/login_page.dart';
import 'package:deneme/patientsc.dart';
import 'package:flutter/material.dart';
import 'package:deneme/patientscmyprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "/patientsc": (context) => PatientSc(),
        "/doctorsc": (context) => DoctorSc(),
        "/healthcarepersc": (context) => HealthcareperSc(),
        "/adminsc": (context) => AdminSc(),
        "/patientscmyprofile": (context) => patientscmyprofile()

      },
    );
  }
}
