import 'package:flutter/material.dart';
import 'package:map/screen_dashboard.dart';
import 'package:map/screen_login.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        DashboardScreen().route : (context)=> DashboardScreen(),
      },
    ),
  );
}

double currentLatitude = 0, currentLongitude = 0;