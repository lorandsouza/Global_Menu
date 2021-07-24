import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appContainer.dart';
import 'login.dart';

void main() {
  runApp(GlobalMenu());
}

class GlobalMenu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        accentColor: Color(0xFFEF3D00),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'login_screen',
      routes: {
        'login_screen':(context) => Login(),
        'app_screen':(context) => MenuScreen(),

      },

    );
  }
}

