import 'package:flutter/material.dart';
//import 'package:fyptemp/login_page.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'Main_file/on_boarding_screen1.dart';
import 'SupportManagnmet/about_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: "/",
      home: Screen1(),
        debugShowCheckedModeBanner: false,
        //home: Loginpage(),
    );
  }
}
