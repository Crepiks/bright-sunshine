import 'package:flutter/material.dart';
import 'package:sunshine/home/views/home_view.dart';
import 'package:sunshine/onboarding/views/welcome_view.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => WelcomeView(),
          "home": (context) => HomeView()
        },
      ))
    };
