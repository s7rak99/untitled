import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled/app_note/auth/login.dart';
import 'package:untitled/app_note/auth/signup.dart';
import 'package:untitled/example2/slider.dart';
import 'package:untitled/example_pachage/drop_down.dart';
import 'package:untitled/example_pachage/geo_locator.dart';
import 'package:untitled/nav/two.dart';
import 'package:untitled/task/pageview.dart';
import 'package:untitled/task/task_num_4.dart';
import 'package:untitled/task/task_num_5.dart';
import 'package:untitled/text_field/text_form_filed.dart';

import 'app_note/crud/add_note.dart';
import 'app_note/home/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GeoLoc(),
      routes: {
        'login': (context) => const Login(),
        'signup': (context) => const SignUp(),
        'homepage': (context) => const HomePage(),
        'addnote': (context) => const AddNote(),
      },
      // theme: ThemeData(
      //
      //   primaryColorLight: Colors.green,
      //   primaryTextTheme: TextTheme(
      //
      //   ),
      //   appBarTheme: const AppBarTheme(
      //     color: Colors.green
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     focusColor: Colors.green,
      //     focusedBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(20.0),
      //       borderSide: BorderSide(color: Colors.green)
      //     ),
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(20.0),
      //     )
      //   ),
      //
      //
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //       style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
      //   primaryColor: Colors.green,
      //   focusColor: Colors.green,
      // ),
    );
  }
}

//
// routes: {
// 'one' : (context) => const One(),
// 'two' : (context) => const Two(),
// 'three' : (context) => const Three(),
// 'home' : (context) => const Test()
// },
